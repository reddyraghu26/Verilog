`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author:Reddy Raghu 
// 
// Create Date: 03/20/2026 
// Design Name: T Flip Flop
// Module Name: TFF
// Description: A positive edge-triggered T Flip-Flop with asynchronous reset.
//              When T = 1, the output toggles on each rising clock edge.
//              When T = 0, the output holds its previous value.
//              Q_bar is always the complement of Q.
//////////////////////////////////////////////////////////////////////////////////



module TFF(
  input clk,reset,T,
  output reg Q,
  output Q_bar
);
  
  assign Q_bar = ~Q;
  always @(posedge clk or posedge reset) begin
    if(reset)
      Q <= 1'b0;
    else if(T)
      Q <= ~Q;
    
  end
  
endmodule