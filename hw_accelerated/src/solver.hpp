#pragma once

#include <array>
#include <string>

#include "circuit_encoder.hpp"
#include "hardware_structs.hpp"
#include "verify.hpp"
#include "xcl2.hpp"

using namespace std;

class Solver {
   public:
    Solver(string eqn_file_path, string gate_to_satisfy, string kernel_bin);
    void solve();

    encoder::Graph graph;
    string eqn_file_path;
    string benchmark_dir;
    string module_name;
    string gate_to_satisfy;
    string kernel_bin;
    alignas(4096) bool is_sat;
    alignas(4096) uint32_t conflict_count;
    alignas(4096) uint32_t decision_count;
    alignas(4096) uint64_t major_propagation_count;
    alignas(4096) uint64_t minor_propagation_count;
    unordered_map<string, bool> satisfying_assignment;
    std::chrono::milliseconds duration;

    void printSummary();
    void logSummary(string log_file_path);
    void writeTestbench();
    void writeTCL();

   private:
    void _solve();
};

Solver::Solver(string eqn_file_path, string gate_to_satisfy, string kernel_bin) : eqn_file_path(eqn_file_path), gate_to_satisfy(gate_to_satisfy), kernel_bin(kernel_bin) {
    std::string file_name = eqn_file_path.substr(eqn_file_path.find_last_of("/") + 1);
    std::string::size_type const p(file_name.find_last_of('.'));
    benchmark_dir = eqn_file_path.substr(0, eqn_file_path.find_last_of("/") + 1);
    module_name = file_name.substr(0, p);
}

void Solver::solve() {
    auto t0 = std::chrono::high_resolution_clock::now();
    _solve();
    auto t1 = std::chrono::high_resolution_clock::now();
    duration = std::chrono::duration_cast<std::chrono::milliseconds>(t1 - t0);
}

void Solver::_solve() {
    cl_int err;
    cl::Context context;
    cl::Kernel solve_kernel;
    cl::CommandQueue q;

    auto devices = xcl::get_xil_devices();
    auto fileBuf = xcl::read_binary_file(kernel_bin);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
        // Creating Context and Command Queue for selected Device
        OCL_CHECK(err, context = cl::Context(device, nullptr, nullptr, nullptr, &err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err));
        std::cout << "Trying to program device[" << i << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
        cl::Program program(context, {device}, bins, nullptr, &err);
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";
            OCL_CHECK(err, solve_kernel = cl::Kernel(program, "solve", &err));
            valid_device = true;
            break;  // we break because we found a valid device
        }
    }
    if (!valid_device) {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }

    parseEQN(eqn_file_path, graph);
    assert(encoder::validForHardware(graph));

    // static to avoid stack overflow
    alignas(4096) static array<GateNode, MAX_GATES> nodes;
    alignas(4096) static array<TruthTable, MAX_GATES> truth_tables;
    alignas(4096) static array<PinAssignment, MAX_PINS> trail;

    // Allocate Buffer in Global Memory
    is_sat = false;
    conflict_count = 0;
    decision_count = 0;
    major_propagation_count = 0;
    minor_propagation_count = 0;
    OCL_CHECK(err, cl::Buffer nodes_buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, sizeof(GateNode) * nodes.size(), nodes.data(), &err));
    OCL_CHECK(err, cl::Buffer truth_tables_buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, sizeof(TruthTable) * truth_tables.size(), truth_tables.data(), &err));
    OCL_CHECK(err, cl::Buffer trail_buffer(context, CL_MEM_USE_HOST_PTR, sizeof(PinAssignment) * trail.size(), trail.data(), &err));
    OCL_CHECK(err, cl::Buffer is_sat_buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, sizeof(is_sat), &is_sat, &err));
    OCL_CHECK(err, cl::Buffer conflict_count_buffer(context, CL_MEM_USE_HOST_PTR, sizeof(conflict_count), &conflict_count, &err));
    OCL_CHECK(err, cl::Buffer decision_count_buffer(context, CL_MEM_USE_HOST_PTR, sizeof(decision_count), &decision_count, &err));
    OCL_CHECK(err, cl::Buffer major_propagation_count_buffer(context, CL_MEM_USE_HOST_PTR, sizeof(major_propagation_count), &major_propagation_count, &err));
    OCL_CHECK(err, cl::Buffer minor_propagation_count_buffer(context, CL_MEM_USE_HOST_PTR, sizeof(minor_propagation_count), &minor_propagation_count, &err));

    OCL_CHECK(err, err = solve_kernel.setArg(0, nodes_buffer));
    OCL_CHECK(err, err = solve_kernel.setArg(1, truth_tables_buffer));
    OCL_CHECK(err, err = solve_kernel.setArg(2, uint32_t(graph.nodes.size())));
    OCL_CHECK(err, err = solve_kernel.setArg(3, graph.name_map.at(gate_to_satisfy)));
    OCL_CHECK(err, err = solve_kernel.setArg(4, trail_buffer));
    OCL_CHECK(err, err = solve_kernel.setArg(5, is_sat_buffer));
    OCL_CHECK(err, err = solve_kernel.setArg(6, conflict_count_buffer));
    OCL_CHECK(err, err = solve_kernel.setArg(7, decision_count_buffer));
    OCL_CHECK(err, err = solve_kernel.setArg(8, major_propagation_count_buffer));
    OCL_CHECK(err, err = solve_kernel.setArg(9, minor_propagation_count_buffer));

    // Initialize Arrays
    for (unsigned int i = 0; i < graph.nodes.size(); i++) {
        nodes[i] = GateNode(graph.nodes[i]);
        string hex_prefixed_string = string("0x" + to_hex(graph.truth_tables[i]));  // Explicit prefix needed because ap_int_base will try to guess radix even if it is provided
        truth_tables[i] = TruthTable(hex_prefixed_string.c_str());
    }

    // Copy input data to device global memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({nodes_buffer, truth_tables_buffer, trail_buffer, is_sat_buffer, conflict_count_buffer, decision_count_buffer, major_propagation_count_buffer, minor_propagation_count_buffer}, 0));

    // Launch the Kernel
    OCL_CHECK(err, err = q.enqueueTask(solve_kernel));

    // Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({trail_buffer, is_sat_buffer, conflict_count_buffer, decision_count_buffer, major_propagation_count_buffer, minor_propagation_count_buffer}, CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();

    // Extract PI assignments from trail
    satisfying_assignment.clear();
    uint32_t t = 0;
    while (satisfying_assignment.size() < graph.primary_inputs.size()) {
        if (trail[t].direction == OUTWARDS && graph.nodes[trail[t].to_gate].is_PI) {
            GateID g = trail[t].to_gate;
            bool val;
            if (trail[t].value == ONE) {
                val = true;
            } else if (trail[t].value == ZERO) {
                val = false;
            } else {
                assert(0 && "non ONE/ZERO assignment in trail");
            }
            assert(satisfying_assignment.find(graph.gate_map[g]) == satisfying_assignment.end() && "duplicate PI assignment in trail");
            satisfying_assignment.insert({graph.gate_map[g], val});
        }
        t++;
    }
}

void Solver::printSummary() {
    cout << eqn_file_path << endl;
    cout << "SAT? = " << is_sat << endl;
    cout << duration.count() << "ms" << endl;
    cout << graph.nodes.size() << " nodes (major pins)." << endl;
    cout << graph.minor_pin_count << " minor pins." << endl;
    cout << graph.primary_inputs.size() << " primary inputs read." << endl;
    cout << graph.primary_outputs.size() << " primary outputs read." << endl;
    cout << conflict_count << " conflicts occurred." << endl;
    cout << decision_count << " decisions occurred." << endl;
    cout << major_propagation_count << " major propagations occurred." << endl;
    cout << minor_propagation_count << " minor propagations occurred." << endl;
}

void Solver::logSummary(string log_file_path) {
    auto fileExists = [](string file_name) {
        ifstream infile(file_name);
        return infile.good();
    };

    // Write Header for new log files
    if (!fileExists(log_file_path)) {
        ofstream log(log_file_path);
        log << "path,SAT?,duration(ms),nodes (major pins),minor pins,primary inputs read,primary outputs read,conflicts occurred,decisions occurred,major propagations occurred,minor propagations occurred" << endl;
        log.close();
    }

    // Write Summary
    ofstream log(log_file_path, ios_base::app);
    log << eqn_file_path << ",";
    log << is_sat << ",";
    log << duration.count() << ",";
    log << graph.nodes.size() << ",";
    log << graph.minor_pin_count << ",";
    log << graph.primary_inputs.size() << ",";
    log << graph.primary_outputs.size() << ",";
    log << conflict_count << ",";
    log << decision_count << ",";
    log << major_propagation_count << ",";
    log << minor_propagation_count << endl;
}

void Solver::writeTestbench() {
    verify::writeTestbench("tb.v", module_name, graph.primary_inputs, graph.primary_outputs, satisfying_assignment, gate_to_satisfy);
}

void Solver::writeTCL() {
    verify::writeTCL("verify_tb.tcl", benchmark_dir, module_name);
}