// Benchmark "multiplier_89_sat" written by ABC on Mon Nov 14 17:44:18 2022

module multiplier_89_sat ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \b[0] , \b[1] , \b[2] ,
    \b[3] ,
    sat  );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \b[0] , \b[1] ,
    \b[2] , \b[3] ;
  output sat;
  wire new_n14_, new_n15_, new_n16_, new_n17_, new_n18_, new_n19_, new_n20_,
    new_n21_, new_n22_, new_n23_, new_n24_, new_n25_, new_n26_, new_n27_,
    new_n28_, new_n29_, new_n30_;
  assign sat = (new_n30_ | (new_n29_ & \a[2] ) | (~new_n14_ & (~new_n29_ | ~\a[2] ) & (new_n29_ | \a[2] ))) & (~new_n30_ | ((~new_n29_ | ~\a[2] ) & (new_n14_ | (new_n29_ & \a[2] ) | (~new_n29_ & ~\a[2] )))) & new_n23_ & (new_n14_ ^ (new_n29_ ^ \a[2] ));
  assign new_n14_ = (~new_n19_ | ~\a[2] ) & (((~new_n20_ | ~\a[2] ) & (((new_n21_ | ~new_n22_) & (new_n15_ | (~new_n21_ & new_n22_) | (new_n21_ & ~new_n22_))) | (new_n20_ & \a[2] ) | (~new_n20_ & ~\a[2] ))) | (new_n19_ & \a[2] ) | (~new_n19_ & ~\a[2] ));
  assign new_n15_ = (new_n16_ | ~new_n17_) & (new_n18_ | (~new_n16_ & new_n17_) | (new_n16_ & ~new_n17_));
  assign new_n16_ = \a[2]  ^ ((~\a[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | (\b[2]  & \b[3] ) | (~\b[2]  & ~\b[3] ) | (~\b[1]  & \b[2] ) | (~\b[2]  & \b[0]  & \b[1] )) & (~\b[2]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | \a[0]  | \a[1] ) & (\a[0]  | ~\a[1]  | ~\b[3] ));
  assign new_n17_ = ((\b[0]  & (\a[3]  | \a[4] ) & (~\a[3]  | ~\a[4] ) & (\a[2]  ^ ~\a[3] )) | ((~\b[0]  | ~\b[1] ) & (\b[0]  | \b[1] ) & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] )) | (\b[1]  & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  ^ ~\a[5] ))) ^ (\a[5]  & \b[0]  & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ));
  assign new_n18_ = (~\b[0]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (\a[2]  ^ ((~\a[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | ((~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & \b[1]  & (\b[0]  | \b[2] )) | ((~\b[2]  ^ \b[3] ) & (~\b[1]  | (~\b[0]  & ~\b[2] )))) & (~\b[1]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | \a[0]  | \a[1] ) & (\a[0]  | ~\a[1]  | ~\b[2] ) & (~\b[3]  | ~\a[0]  | (~\a[1]  ^ ~\a[2] ))))) & ((\a[0]  & (\a[1]  | \a[2] ) & (~\a[1]  | ~\a[2] ) & ((~\b[1]  & \b[2] ) | ((\b[2]  | ~\b[0]  | ~\b[1] ) & \b[1]  & (\b[0]  | ~\b[2] )))) | (\b[2]  & \a[0]  & (\a[1]  ^ ~\a[2] )) | (\b[0]  & (\a[1]  | \a[2] ) & (~\a[1]  | ~\a[2] ) & ~\a[0]  & ~\a[1] ) | (\b[1]  & ~\a[0]  & \a[1] ) | (\b[0]  & ~\a[0]  & \a[1] ) | (\a[0]  & (\a[1]  | \a[2] ) & (~\a[1]  | ~\a[2] ) & (~\b[0]  | ~\b[1] ) & (\b[0]  | \b[1] )) | (\b[1]  & \a[0]  & (\a[1]  ^ ~\a[2] )) | ~\a[2]  | (\a[0]  & \b[0] ) | (\b[0]  & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (~\a[2]  ^ ((~\a[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | ((~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & \b[1]  & (\b[0]  | \b[2] )) | ((~\b[2]  ^ \b[3] ) & (~\b[1]  | (~\b[0]  & ~\b[2] )))) & (~\b[1]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | \a[0]  | \a[1] ) & (\a[0]  | ~\a[1]  | ~\b[2] ) & (~\b[3]  | ~\a[0]  | (~\a[1]  ^ ~\a[2] ))))) | ((~\b[0]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] )) & (~\a[2]  | (\a[0]  & (\a[1]  | \a[2] ) & (~\a[1]  | ~\a[2] ) & ((\b[2]  & \b[3] ) | (~\b[2]  & ~\b[3] ) | ~\b[1]  | (~\b[0]  & ~\b[2] )) & ((\b[2]  ^ \b[3] ) | (\b[1]  & (\b[0]  | \b[2] )))) | (\b[1]  & (\a[1]  | \a[2] ) & (~\a[1]  | ~\a[2] ) & ~\a[0]  & ~\a[1] ) | (~\a[0]  & \a[1]  & \b[2] ) | (\b[3]  & \a[0]  & (\a[1]  ^ ~\a[2] ))) & (\a[2]  | ((~\a[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | ((~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & \b[1]  & (\b[0]  | \b[2] )) | ((~\b[2]  ^ \b[3] ) & (~\b[1]  | (~\b[0]  & ~\b[2] )))) & (~\b[1]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | \a[0]  | \a[1] ) & (\a[0]  | ~\a[1]  | ~\b[2] ) & (~\b[3]  | ~\a[0]  | (~\a[1]  ^ ~\a[2] ))))));
  assign new_n19_ = ((\a[5]  & \b[0]  & (~\b[0]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )) & ((\b[0]  & \b[1] ) | (~\b[0]  & ~\b[1] ) | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[1]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & (~\b[0]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] )) & ((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | ((\b[1]  | ~\b[2] ) & ((~\b[2]  & \b[0]  & \b[1] ) | ~\b[1]  | (~\b[0]  & \b[2] )))) & (~\b[0]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[2]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & (~\b[1]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] ))) | ((~\a[5]  ^ (((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | ((~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & \b[1]  & (\b[0]  | \b[2] )) | ((~\b[2]  ^ \b[3] ) & (~\b[1]  | (~\b[0]  & ~\b[2] )))) & (~\b[1]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & ((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] ) | ~\b[3] ) & (~\b[2]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )))) & (~\a[5]  | ~\b[0]  | (\b[0]  & (\a[3]  | \a[4] ) & (~\a[3]  | ~\a[4] ) & (\a[2]  ^ ~\a[3] )) | ((~\b[0]  | ~\b[1] ) & (\b[0]  | \b[1] ) & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] )) | (\b[1]  & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  ^ ~\a[5] )) | (\b[0]  & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] )) | ((\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] ) & ((~\b[1]  & \b[2] ) | ((\b[2]  | ~\b[0]  | ~\b[1] ) & \b[1]  & (\b[0]  | ~\b[2] )))) | (\b[0]  & (\a[3]  ^ ~\a[4] ) & (\a[2]  ^ ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] )) | (\b[2]  & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  ^ ~\a[5] )) | (\b[1]  & (\a[3]  | \a[4] ) & (~\a[3]  | ~\a[4] ) & (\a[2]  ^ ~\a[3] ))) & ((\a[5]  & \b[0] ) | ((~\b[0]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )) & ((\b[0]  & \b[1] ) | (~\b[0]  & ~\b[1] ) | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[1]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & \a[5]  & (~\b[0]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] )) & ((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | ((\b[1]  | ~\b[2] ) & ((~\b[2]  & \b[0]  & \b[1] ) | ~\b[1]  | (~\b[0]  & \b[2] )))) & (~\b[0]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[2]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & (~\b[1]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )))))) ^ ((\a[5]  & ~\b[1] ) ^ (((\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] ) & (~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & (\b[1]  | ~\b[2] ) & (\b[2]  | ~\b[0]  | ~\b[1] )) | (\b[2]  & (\a[3]  ^ ~\a[4] ) & (\a[2]  ^ ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] )) | ((\a[3]  | \a[4] ) & (~\a[3]  | ~\a[4] ) & (\a[2]  ^ ~\a[3] ) & \b[3] )));
  assign new_n20_ = (~\a[5]  ^ (((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | ((~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & \b[1]  & (\b[0]  | \b[2] )) | ((~\b[2]  ^ \b[3] ) & (~\b[1]  | (~\b[0]  & ~\b[2] )))) & (~\b[1]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & ((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] ) | ~\b[3] ) & (~\b[2]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )))) ^ ((\a[5]  & \b[0] ) ^ ((~\b[0]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )) & ((\b[0]  & \b[1] ) | (~\b[0]  & ~\b[1] ) | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[1]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & \a[5]  & (~\b[0]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] )) & ((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | ((\b[1]  | ~\b[2] ) & ((~\b[2]  & \b[0]  & \b[1] ) | ~\b[1]  | (~\b[0]  & \b[2] )))) & (~\b[0]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[2]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & (~\b[1]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] ))));
  assign new_n21_ = \a[2]  ^ (~\b[3]  | (((~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | \a[0]  | \a[1] ) & (~\a[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | ((~\b[2]  | ~\b[3] ) & ((\b[2]  & \b[3] ) | (~\b[2]  & ~\b[3] ) | ~\b[1]  | (~\b[0]  & ~\b[2] ))))));
  assign new_n22_ = (((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | ((\b[1]  | ~\b[2] ) & ((~\b[2]  & \b[0]  & \b[1] ) | ~\b[1]  | (~\b[0]  & \b[2] )))) & (~\b[0]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[2]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & (~\b[1]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] ))) ^ (~\a[5]  | ((~\b[0]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )) & ((\b[0]  & \b[1] ) | (~\b[0]  & ~\b[1] ) | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[1]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & \a[5]  & (~\b[0]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ))));
  assign new_n23_ = (((~new_n20_ | ~\a[2] ) & (((new_n21_ | ~new_n22_) & (new_n15_ | (~new_n21_ & new_n22_) | (new_n21_ & ~new_n22_))) | (new_n20_ & \a[2] ) | (~new_n20_ & ~\a[2] ))) ^ (new_n19_ ^ \a[2] )) & ((~new_n21_ & new_n22_) | (~new_n15_ & (new_n21_ | ~new_n22_) & (~new_n21_ | new_n22_)) | (new_n20_ ^ \a[2] )) & (((new_n21_ | ~new_n22_) & (new_n15_ | (~new_n21_ & new_n22_) | (new_n21_ & ~new_n22_))) | (new_n20_ & \a[2] ) | (~new_n20_ & ~\a[2] )) & new_n24_ & (new_n15_ ^ (~new_n21_ ^ new_n22_));
  assign new_n24_ = (~new_n18_ | (~new_n16_ ^ new_n17_)) & (new_n18_ | (~new_n16_ & new_n17_) | (new_n16_ & ~new_n17_)) & ~new_n26_ & ~new_n25_ & ~new_n27_ & new_n28_;
  assign new_n25_ = (~\a[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | ((\b[1]  | ~\b[2] ) & ((~\b[2]  & \b[0]  & \b[1] ) | ~\b[1]  | (~\b[0]  & \b[2] )))) & (~\b[2]  | ~\a[0]  | (~\a[1]  ^ ~\a[2] )) & (~\b[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | \a[0]  | \a[1] ) & (~\b[1]  | \a[0]  | ~\a[1] ) & (~\b[0]  | \a[0]  | ~\a[1] ) & (~\a[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | (\b[0]  & \b[1] ) | (~\b[0]  & ~\b[1] )) & (~\b[1]  | ~\a[0]  | (~\a[1]  ^ ~\a[2] )) & \a[2]  & (~\a[0]  | ~\b[0] ) & (~\b[0]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (\a[2]  ^ ((~\a[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | ((~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & \b[1]  & (\b[0]  | \b[2] )) | ((~\b[2]  ^ \b[3] ) & (~\b[1]  | (~\b[0]  & ~\b[2] )))) & (~\b[1]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | \a[0]  | \a[1] ) & (\a[0]  | ~\a[1]  | ~\b[2] ) & (~\b[3]  | ~\a[0]  | (~\a[1]  ^ ~\a[2] ))))) & ((\b[0]  & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] )) | (\a[2]  & (~\a[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | ((~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & \b[1]  & (\b[0]  | \b[2] )) | ((~\b[2]  ^ \b[3] ) & (~\b[1]  | (~\b[0]  & ~\b[2] )))) & (~\b[1]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | \a[0]  | \a[1] ) & (\a[0]  | ~\a[1]  | ~\b[2] ) & (~\b[3]  | ~\a[0]  | (~\a[1]  ^ ~\a[2] ))) | (~\a[2]  & ((\a[0]  & (\a[1]  | \a[2] ) & (~\a[1]  | ~\a[2] ) & ((\b[2]  & \b[3] ) | (~\b[2]  & ~\b[3] ) | ~\b[1]  | (~\b[0]  & ~\b[2] )) & ((\b[2]  ^ \b[3] ) | (\b[1]  & (\b[0]  | \b[2] )))) | (\b[1]  & (\a[1]  | \a[2] ) & (~\a[1]  | ~\a[2] ) & ~\a[0]  & ~\a[1] ) | (~\a[0]  & \a[1]  & \b[2] ) | (\b[3]  & \a[0]  & (\a[1]  ^ ~\a[2] )))));
  assign new_n26_ = ((\a[0]  & (\a[1]  | \a[2] ) & (~\a[1]  | ~\a[2] ) & ((~\b[1]  & \b[2] ) | ((\b[2]  | ~\b[0]  | ~\b[1] ) & \b[1]  & (\b[0]  | ~\b[2] )))) | (\b[2]  & \a[0]  & (\a[1]  ^ ~\a[2] )) | (\b[0]  & (\a[1]  | \a[2] ) & (~\a[1]  | ~\a[2] ) & ~\a[0]  & ~\a[1] ) | (\b[1]  & ~\a[0]  & \a[1] ) | (\b[0]  & ~\a[0]  & \a[1] ) | (\a[0]  & (\a[1]  | \a[2] ) & (~\a[1]  | ~\a[2] ) & (~\b[0]  | ~\b[1] ) & (\b[0]  | \b[1] )) | (\b[1]  & \a[0]  & (\a[1]  ^ ~\a[2] )) | ~\a[2]  | (\a[0]  & \b[0] )) & ((\b[0]  & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (~\a[2]  ^ ((~\a[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | ((~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & \b[1]  & (\b[0]  | \b[2] )) | ((~\b[2]  ^ \b[3] ) & (~\b[1]  | (~\b[0]  & ~\b[2] )))) & (~\b[1]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | \a[0]  | \a[1] ) & (\a[0]  | ~\a[1]  | ~\b[2] ) & (~\b[3]  | ~\a[0]  | (~\a[1]  ^ ~\a[2] ))))) | ((~\b[0]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] )) & (~\a[2]  | (\a[0]  & (\a[1]  | \a[2] ) & (~\a[1]  | ~\a[2] ) & ((\b[2]  & \b[3] ) | (~\b[2]  & ~\b[3] ) | ~\b[1]  | (~\b[0]  & ~\b[2] )) & ((\b[2]  ^ \b[3] ) | (\b[1]  & (\b[0]  | \b[2] )))) | (\b[1]  & (\a[1]  | \a[2] ) & (~\a[1]  | ~\a[2] ) & ~\a[0]  & ~\a[1] ) | (~\a[0]  & \a[1]  & \b[2] ) | (\b[3]  & \a[0]  & (\a[1]  ^ ~\a[2] ))) & (\a[2]  | ((~\a[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | ((~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & \b[1]  & (\b[0]  | \b[2] )) | ((~\b[2]  ^ \b[3] ) & (~\b[1]  | (~\b[0]  & ~\b[2] )))) & (~\b[1]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | \a[0]  | \a[1] ) & (\a[0]  | ~\a[1]  | ~\b[2] ) & (~\b[3]  | ~\a[0]  | (~\a[1]  ^ ~\a[2] ))))) | (\a[2]  & (((~\a[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | (\b[0]  & \b[1] ) | (~\b[0]  & ~\b[1] )) & (~\b[1]  | ~\a[0]  | (~\a[1]  ^ ~\a[2] ))) | ~\a[0]  | ~\b[0] )) | (((~\a[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | ((\b[1]  | ~\b[2] ) & ((~\b[2]  & \b[0]  & \b[1] ) | ~\b[1]  | (~\b[0]  & \b[2] )))) & (~\b[2]  | ~\a[0]  | (~\a[1]  ^ ~\a[2] )) & (~\b[0]  | (~\a[1]  & ~\a[2] ) | (\a[1]  & \a[2] ) | \a[0]  | \a[1] ) & (~\b[1]  | \a[0]  | ~\a[1] )) ? ((\b[0]  & ~\a[0]  & \a[1] ) | (\a[0]  & (\a[1]  | \a[2] ) & (~\a[1]  | ~\a[2] ) & (~\b[0]  | ~\b[1] ) & (\b[0]  | \b[1] )) | (\b[1]  & \a[0]  & (\a[1]  ^ ~\a[2] ))) : ~\a[2] ));
  assign new_n27_ = ~\a[3]  & ~\a[4]  & ~\a[5]  & ~\a[1]  & ~\a[2] ;
  assign new_n28_ = \a[0]  & \b[0]  & (\b[1]  | \b[2]  | \b[3] );
  assign new_n29_ = ((\b[3]  & (((\a[3]  ^ ~\a[4] ) & (\a[2]  ^ ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] )) | ((\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] ) & ((\b[2]  & \b[3] ) | ((~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & \b[1]  & (\b[0]  | \b[2] )))))) ^ (\a[5]  & ~\b[2] )) ^ ((((\a[5]  & \b[0]  & (~\b[0]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )) & ((\b[0]  & \b[1] ) | (~\b[0]  & ~\b[1] ) | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[1]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & (~\b[0]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] )) & ((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | ((\b[1]  | ~\b[2] ) & ((~\b[2]  & \b[0]  & \b[1] ) | ~\b[1]  | (~\b[0]  & \b[2] )))) & (~\b[0]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[2]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & (~\b[1]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] ))) | ((~\a[5]  ^ (((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | ((~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & \b[1]  & (\b[0]  | \b[2] )) | ((~\b[2]  ^ \b[3] ) & (~\b[1]  | (~\b[0]  & ~\b[2] )))) & (~\b[1]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & ((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] ) | ~\b[3] ) & (~\b[2]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )))) & (~\a[5]  | ~\b[0]  | (\b[0]  & (\a[3]  | \a[4] ) & (~\a[3]  | ~\a[4] ) & (\a[2]  ^ ~\a[3] )) | ((~\b[0]  | ~\b[1] ) & (\b[0]  | \b[1] ) & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] )) | (\b[1]  & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  ^ ~\a[5] )) | (\b[0]  & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] )) | ((\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] ) & ((~\b[1]  & \b[2] ) | ((\b[2]  | ~\b[0]  | ~\b[1] ) & \b[1]  & (\b[0]  | ~\b[2] )))) | (\b[0]  & (\a[3]  ^ ~\a[4] ) & (\a[2]  ^ ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] )) | (\b[2]  & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  ^ ~\a[5] )) | (\b[1]  & (\a[3]  | \a[4] ) & (~\a[3]  | ~\a[4] ) & (\a[2]  ^ ~\a[3] ))) & ((\a[5]  & \b[0] ) | ((~\b[0]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )) & ((\b[0]  & \b[1] ) | (~\b[0]  & ~\b[1] ) | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[1]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & \a[5]  & (~\b[0]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] )) & ((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | ((\b[1]  | ~\b[2] ) & ((~\b[2]  & \b[0]  & \b[1] ) | ~\b[1]  | (~\b[0]  & \b[2] )))) & (~\b[0]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[2]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & (~\b[1]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )))))) & (~\a[5]  | \b[1]  | (((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | (\b[2]  & \b[3] ) | (~\b[2]  & ~\b[3] ) | (~\b[1]  & \b[2] ) | (~\b[2]  & \b[0]  & \b[1] )) & (~\b[2]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & ((~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] ) | ~\b[3] ))) & ((\a[5]  & ~\b[1] ) | ((\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] ) & (~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & (\b[1]  | ~\b[2] ) & (\b[2]  | ~\b[0]  | ~\b[1] )) | (\b[2]  & (\a[3]  ^ ~\a[4] ) & (\a[2]  ^ ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] )) | ((\a[3]  | \a[4] ) & (~\a[3]  | ~\a[4] ) & (\a[2]  ^ ~\a[3] ) & \b[3] ))) | (((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | (\b[2]  & \b[3] ) | (~\b[2]  & ~\b[3] ) | (~\b[1]  & \b[2] ) | (~\b[2]  & \b[0]  & \b[1] )) & (~\b[2]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & ((~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] ) | ~\b[3] ) & \a[5]  & \b[1] ));
  assign new_n30_ = (\a[5]  & ~\b[3] ) ^ (~\a[2]  ^ ((((\b[3]  & (((\a[3]  ^ ~\a[4] ) & (\a[2]  ^ ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] )) | ((\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] ) & ((\b[2]  & \b[3] ) | ((~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & \b[1]  & (\b[0]  | \b[2] )))))) ^ (\a[5]  & ~\b[2] )) & ((((\a[5]  & \b[0]  & (~\b[0]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )) & ((\b[0]  & \b[1] ) | (~\b[0]  & ~\b[1] ) | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[1]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & (~\b[0]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] )) & ((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | ((\b[1]  | ~\b[2] ) & ((~\b[2]  & \b[0]  & \b[1] ) | ~\b[1]  | (~\b[0]  & \b[2] )))) & (~\b[0]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[2]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & (~\b[1]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] ))) | ((~\a[5]  ^ (((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | ((~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & \b[1]  & (\b[0]  | \b[2] )) | ((~\b[2]  ^ \b[3] ) & (~\b[1]  | (~\b[0]  & ~\b[2] )))) & (~\b[1]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & ((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] ) | ~\b[3] ) & (~\b[2]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )))) & (~\a[5]  | ~\b[0]  | (\b[0]  & (\a[3]  | \a[4] ) & (~\a[3]  | ~\a[4] ) & (\a[2]  ^ ~\a[3] )) | ((~\b[0]  | ~\b[1] ) & (\b[0]  | \b[1] ) & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] )) | (\b[1]  & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  ^ ~\a[5] )) | (\b[0]  & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] )) | ((\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] ) & ((~\b[1]  & \b[2] ) | ((\b[2]  | ~\b[0]  | ~\b[1] ) & \b[1]  & (\b[0]  | ~\b[2] )))) | (\b[0]  & (\a[3]  ^ ~\a[4] ) & (\a[2]  ^ ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] )) | (\b[2]  & (\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  ^ ~\a[5] )) | (\b[1]  & (\a[3]  | \a[4] ) & (~\a[3]  | ~\a[4] ) & (\a[2]  ^ ~\a[3] ))) & ((\a[5]  & \b[0] ) | ((~\b[0]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )) & ((\b[0]  & \b[1] ) | (~\b[0]  & ~\b[1] ) | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[1]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & \a[5]  & (~\b[0]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] )) & ((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | ((\b[1]  | ~\b[2] ) & ((~\b[2]  & \b[0]  & \b[1] ) | ~\b[1]  | (~\b[0]  & \b[2] )))) & (~\b[0]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & (~\b[2]  | (~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  ^ ~\a[5] )) & (~\b[1]  | (~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] )))))) & (~\a[5]  | \b[1]  | (((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | (\b[2]  & \b[3] ) | (~\b[2]  & ~\b[3] ) | (~\b[1]  & \b[2] ) | (~\b[2]  & \b[0]  & \b[1] )) & (~\b[2]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & ((~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] ) | ~\b[3] ))) & ((\a[5]  & ~\b[1] ) | ((\a[2]  | \a[3] ) & (~\a[2]  | ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] ) & (~\b[2]  | ~\b[3] ) & (\b[2]  | \b[3] ) & (\b[1]  | ~\b[2] ) & (\b[2]  | ~\b[0]  | ~\b[1] )) | (\b[2]  & (\a[3]  ^ ~\a[4] ) & (\a[2]  ^ ~\a[3] ) & (\a[4]  | \a[5] ) & (~\a[4]  | ~\a[5] )) | ((\a[3]  | \a[4] ) & (~\a[3]  | ~\a[4] ) & (\a[2]  ^ ~\a[3] ) & \b[3] ))) | (((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | (\b[2]  & \b[3] ) | (~\b[2]  & ~\b[3] ) | (~\b[1]  & \b[2] ) | (~\b[2]  & \b[0]  & \b[1] )) & (~\b[2]  | (~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & ((~\a[3]  & ~\a[4] ) | (\a[3]  & \a[4] ) | (~\a[2]  ^ ~\a[3] ) | ~\b[3] ) & \a[5]  & \b[1] ))) | (\a[5]  & \b[2]  & (~\b[3]  | (((~\a[3]  ^ ~\a[4] ) | (~\a[2]  ^ ~\a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] )) & ((~\a[2]  & ~\a[3] ) | (\a[2]  & \a[3] ) | (~\a[4]  & ~\a[5] ) | (\a[4]  & \a[5] ) | ((~\b[2]  | ~\b[3] ) & ((\b[2]  & \b[3] ) | (~\b[2]  & ~\b[3] ) | ~\b[1]  | (~\b[0]  & ~\b[2] )))))))));
endmodule

