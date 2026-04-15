`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Engineer: Reddy Raghu
// 
// Create Date: 04/15/2026 
// Design Name: Frequency Divider
// Module Name: Freq_Divider
// Description: This module divides the input clock frequency using a binary counter.
//              The MSB of the counter is used as the divided clock output.
//////////////////////////////////////////////////////////////////////////////////


// Code your design here
//module Freq_Divider #(
//  parameter width=2)
//  (
//  input clk,reset,
//  output clk_out
//);
//  wire  [width-1:0]w;
//  DFF D1(.clk(clk),.reset(reset),.Q(w[0]));
//  genvar i;
//  generate 
//    for(i=0;i<width-1;i=i+1) begin
//      DFF D2(.clk(w[i]),.reset(reset),.Q(w[i+1]));
//    end
//  endgenerate
//  assign clk_out = w[width-1];
//endmodule

//module DFF(
//  input clk,reset,
//  output reg Q
//);
//  always @(posedge clk or posedge reset) begin
//    if(reset)
//      Q <= 0;
//    else
//      Q <= ~Q;
//  end
//endmodule


//Best way 
 module Freq_Divider #(
   parameter width =2)     // Counter bit width (sets division factor = 2^width)
   (
   input clk,reset,
   output reg clk_out
 );
   reg[width-1:0] count;
  
   always @(posedge clk or posedge reset) begin
     if(reset) begin
       count   <= 0;
       clk_out <= 0;
     end
    
     else begin
     // Increment counter at every clock edge
       count   <= count+1;
       
       // MSB of counter acts as divided clock output
       clk_out <= count[width-1];
     end
   end
 endmodule
  
