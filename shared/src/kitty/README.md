[![Actions Status](https://github.com/msoeken/kitty/workflows/Linux%20CI/badge.svg)](https://github.com/msoeken/kitty/actions)
[![Actions Status](https://github.com/msoeken/kitty/workflows/MacOS%20CI/badge.svg)](https://github.com/msoeken/kitty/actions)
[![Actions Status](https://github.com/msoeken/kitty/workflows/Windows%20CI/badge.svg)](https://github.com/msoeken/kitty/actions)
[![Documentation Status](https://readthedocs.org/projects/libkitty/badge/?version=latest)](http://libkitty.readthedocs.io/en/latest/?badge=latest)
[![Latest release](https://img.shields.io/github/release/msoeken/kitty.svg)](https://github.com/msoeken/kitty/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# kitty

<img src="https://cdn.rawgit.com/msoeken/kitty/master/kitty.svg" width="64" height="64" align="left" style="margin-right: 12pt" />
kitty is a C++-17 truth table library.  It provides efficient implementations for basic truth table manipulations and various algorithms.

[Read the full documentation.](http://libkitty.readthedocs.io/en/latest/?badge=latest)

## Example

The following code snippet generates truth tables for the 3-variable functions `sum` and `carry` for a 1-bit full-adder with carry.

```c++
#include <kitty/kitty.hpp>

dynamic_truth_table a( 3 ), b( 3 ), c( 3 );

create_nth_var( a, 0 );
create_nth_var( b, 1 );
create_nth_var( c, 2 );

const auto sum = a ^ b ^ c;
const auto carry = ternary_majority( a, b, c );
```

One can use `static_truth_table` instead of `dynamic_truth_table`, if the number of variables is known at compile-time.  The interface stays the same.

```c++
#include <kitty/kitty.hpp>

static_truth_table<3> a, b, c;

create_nth_var( a, 0 );
create_nth_var( b, 1 );
create_nth_var( c, 2 );

const auto sum = a ^ b ^ c;
const auto carry = ternary_majority( a, b, c );
```

## EPFL logic sythesis libraries

kitty is part of the [EPFL logic synthesis](https://lsi.epfl.ch/page-138455-en.html) libraries.  The other libraries and several examples on how to use and integrate the libraries can be found in the [logic synthesis tool showcase](https://github.com/lsils/lstools-showcase).


