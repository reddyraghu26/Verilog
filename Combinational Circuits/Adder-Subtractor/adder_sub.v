`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Reddy Raghu 
// 
// Create Date: 03/30/2026 
// Design Name: Parameterized Ripple Carry Adder/Subtractor
// Module Name: adder_sub
// Description: Parameterized N-bit adder/subtractor implemented using a ripple-carry architecture.
//              Performs addition when M=0 and subtraction when M=1.
//              Subtraction is achieved using 2's complement by conditionally inverting B
//              and setting the initial carry-in to 1.
// 
//////////////////////////////////////////////////////////////////////////////////


module adder_sub #(
  parameter width=4)
  (
    input  [width-1:0] A,B,
  input  M,
    output [width-1:0] sum,
  output carry
);
// Internal carry signals between full adders
  wire [width-1:0] w;
  // Initial carry-in is Mode (important for 2's complement subtraction)
  FA f1(.A(A[0]),.B(B[0]),.Cin(M),.Mode(M),.sum(sum[0]),.carry(w[0]));
  genvar i;
  generate
    for(i=1;i<width;i=i+1) begin:FA
    // Carry from previous stage
      FA f(.A(A[i]),.B(B[i]),.Cin(w[i-1]),.Mode(M),.sum(sum[i]),.carry(w[i]));
    end
  endgenerate
  // Final carry output 
  assign carry = w[width-1];
endmodule


//1-bit adder/subtractor
module FA(
  input A,B,Cin,Mode,
  output sum,carry
);
  wire M;
  assign M = Mode^B;  // When Mode=1: B is inverted (B^1) and Cin=1 → performs 2's complement → A - B
  assign sum = A ^ M ^ Cin;
  assign carry= (A & M)|((A ^ M) & Cin);
endmodule