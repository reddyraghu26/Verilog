`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author : Reddy Raghu 
// 
// Create Date: 03/25/2026 
// Design Name:BCD to Excess-3 code converter
// Module Name: BCD to Excess-3
// Description: Converts 4-bit BCD input to Excess-3 code
//////////////////////////////////////////////////////////////////////////////////


module BCD_to_Excess_3(
  input [3:0] BCD, //input should be BCD(Binary Coded Decimal)
  output [3:0] excess_3
);
  assign excess_3 = BCD + 3'd3; 
  
endmodule
