`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Reddy Raghu
// Create Date: 03/16/2026 10:09:43 AM
// Module Name: Encoder_4X2 
// Description: 4-to-2 binary encoder with enable input.
//////////////////////////////////////////////////////////////////////////////////


module Encoder_4X2(
    input E,
    input [3:0] I,
    output reg [1:0] Y
    );
    always @(*) begin
    Y=2'b00;
    if(E) begin
     if(I[0])
       Y=2'b00;
     else if(I[1])
       Y=2'b01;
     else if (I[2])
       Y=2'b10;
     else if (I[3])
       Y=2'b11;
    end
    else
        Y=2'b00;
    
    end
endmodule
