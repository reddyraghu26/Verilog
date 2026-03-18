`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2026 10:55:44 PM
// Design Name: 
// Module Name: DFF
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


//D Flip Flop
module DFF(
  input  D,clk,reset,
  output reg Q
);
  
  //asynchronous reset
  always @(posedge clk or posedge reset) begin
    if(reset) 
      Q <= 0;
    else
      Q <= D;
  end
  
//    synchronous reset
//   always @(posedge clk) begin
//     if(reset) 
//       Q <= 0;
//     else
//       Q <= D;
//   end
  
endmodule