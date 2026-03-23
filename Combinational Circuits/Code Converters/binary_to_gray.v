`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Reddy Raghu 
// 
// Create Date: 03/23/2026 
// Design Name: Binary to Gray Converter
// Module Name: binary_to_gray
// Description: Parameterized Binary to Gray code converter.
//             Gray code is generated such that only one bit changes 
//             between consecutive values.
//             Two implementations are provided:
//             1. Generate loop method
//             2. Bitwise XOR with right shift method
// 
//////////////////////////////////////////////////////////////////////////////////


module binary_to_gray#(parameter width=4)(
  input [width-1:0] bin,
  output [width-1:0] gry
);
  
  genvar i;
  generate
    for(i=0;i<width-1;i=i+1) begin:x
      //we are performing xor operation between adjacent bits except MSB 
      assign gry[i] = bin[i] ^ bin[i+1];
    end
  endgenerate
  //MSB of Gray code is same as MSB of binary 
  assign gry[width-1] = bin[width-1];
  
endmodule

//Alternative implementation 

// module binary_to_gray#(parameter width=4)(
//   input [width-1:0] bin,
//   output [width-1:0] gry
// );
      //first we perform right shift operation on binary then we perform xor 
//   assign gry = bin ^ (bin>>1);
// endmodule
