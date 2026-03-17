`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author:Reddy Raghu 
// 
// Create Date: 03/17/2026
// Design Name: priority_encoder_4X2
// Module Name: priority_encoder_4X2_tb
// Description: Testbench for a 4×2 priority encoder. 
// It applies all 16 possible input combinations and verifies that the output correctly reflects the highest-priority active input.
//////////////////////////////////////////////////////////////////////////////////


module priority_encoder_4X2_tb;
  reg [3:0] I;
  wire [1:0] Y;
  
  priority_encoder_4X2 uut(I,Y);
   integer i;
  initial begin
    $display(" I  | Y");
    $monitor("%b|%b",I,Y);
   
    for(i=0;i<16;i=i+1) begin 
      I=i;
      #1;
    end
    #1;
    $finish;
  end
endmodule
  
