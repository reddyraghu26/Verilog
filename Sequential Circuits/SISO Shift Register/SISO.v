`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Reddy Raghu 
// Create Date: 03/21/2026 
// Module Name: SISO
// Description: 
// 4-bit Serial-In Serial-Out (SISO) Shift Register implemented using
// structural modeling with D Flip-Flops. Data is shifted on each
// rising edge of the clock. Asynchronous clear resets all stages to 0.
//////////////////////////////////////////////////////////////////////////////////



module SISO(
  input data,
  input clk,
  input clr,
  output out
);
  wire [2:0] w;
  
  DFF F1(.clk(clk),.clr(clr),.D(data),.Q(w[0]));
  DFF F2(.clk(clk),.clr(clr),.D(w[0]),.Q(w[1]));
  DFF F3(.clk(clk),.clr(clr),.D(w[1]),.Q(w[2]));
  DFF F4(.clk(clk),.clr(clr),.D(w[2]),.Q(out));
  
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
  