`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Reddy Raghu 
// 
// Create Date: 03/28/2026 
// Design Name: Parameterized Async Down Counter
// Module Name: async_down_counter
// Description :
//   Parameterized asynchronous (ripple) down counter using D flip-flops
//   configured as toggle flip-flops (D = ~Q). Each stage is clocked by
//   the previous stage output. Includes asynchronous active-high clear.
//////////////////////////////////////////////////////////////////////////////////


module async_down_counter #(
    parameter width=2         //counter width
)(
  input clk,clr,
  output [width-1:0]count
);
  wire[width-1:0] q;
  //The input of DFF is the inverted output of it so,that it behaves as TFF (D=~Q(toggle))
  dff f1(.clk(clk),.clr(clr),.d(~q[0]),.q(q[0]));
  genvar i;
  generate
    for(i=1;i<width;i=i+1) begin:f
    // Each flip-flop is clocked by the  output of the previous DFF
      dff f(.clk(q[i-1]),.clr(clr),.d(~q[i]),.q(q[i]));  
    end 
  endgenerate
  
assign count = q;

endmodule

//D Flip Flop
module dff(
  input d,clk,clr,
  output reg q
);
  always @(posedge clk or posedge clr) begin
  // Asynchronous clr
    if(clr)
      q <= 0;
    else
      q <= d;
  end
endmodule

