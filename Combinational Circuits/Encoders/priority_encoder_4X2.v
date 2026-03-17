`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author:Reddy Raghu 
// Create Date: 03/17/2026 
// Design Name: 
// Module Name: priority_encoder_4X2
// Description: 4×2 priority encoder. Encodes a 4-bit input into a 2-bit output
// based on priority (I[3] highest, I[0] lowest).
//////////////////////////////////////////////////////////////////////////////////



module priority_encoder_4X2(
  input [3:0] I,
  output reg [1:0] Y
);
  
  always @(*) begin
    if(I[3])
      Y=2'b11;
    else if(I[2])
      Y=2'b10;
    else if(I[1])
      Y=2'b01;
    else 
      Y=2'b00;
      
  end
  
endmodule