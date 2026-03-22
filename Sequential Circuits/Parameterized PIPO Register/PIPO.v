`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Reddy Raghu 
// 
// Create Date: 03/22/2026 
// Design Name: Parameterized_PIPO_Register
// Module Name: PIPO
// Project Name: 
// Description: 4-bit (parameterized) Parallel-In Parallel-Out Register
//              Implemented using structural modeling with D Flip-Flops: 
//////////////////////////////////////////////////////////////////////////////////



module PIPO #(parameter width=4)(
  input [width-1:0]data,
  input clk,clr,
  output [width-1:0]out
);
  
  genvar i;
  generate
    for(i=0;i<width;i=i+1) begin: D
      DFF FF(.clk(clk),.clr(clr),.D(data[i]),.Q(out[i]));
    end
  endgenerate
  
endmodule
module DFF(
  input clk,clr,D,
  output reg Q
);
  always @(posedge clk or posedge clr) begin
    if(clr)
      Q <= 0;
    else
      Q <= D;
  end
  
endmodule
  

// module PIPO #(parameter width=4)(
//   input [width-1:0]data,
//   input clk,clr,
//   output reg [width-1:0]out
// );
//   always @(posedge clk or posedge clr) begin
//     if(clr)
//       out <= 0;
//     else
//       out <= data;
//   end
  
// endmodule
