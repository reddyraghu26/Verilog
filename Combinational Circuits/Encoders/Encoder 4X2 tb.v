`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Reddy Raghu
// Create Date: 03/16/2026
// Module Name: testbench
// Description: Testbench for 4-to-2 binary encoder with enable input.
//////////////////////////////////////////////////////////////////////////////////

module testbench();
  reg E; 
  reg [3:0] I;
  wire [1:0] Y;
  
  Encoder_4X2 uut(.E(E),.I(I),.Y(Y));
  initial begin
     E=1'b1;
     I=4'b0000;
     #10;
     I=4'b0001;
     #10;
     I=4'b0010;
     #10;
     I=4'b0100;
     #10;
     I=4'b1000;
     #10;
     $finish;
   end
  
endmodule
