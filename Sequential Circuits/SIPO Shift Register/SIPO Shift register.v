`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Reddy Raghu 
// 
// Create Date: 03/26/2026 
// Module Name: SIPO Shift register
// Description: Parameterized SIPO shift register with asynchronous reset.
//             Serial input data is shifted on each clock edge and 
//             available as parallel output.
// 
//////////////////////////////////////////////////////////////////////////////////




module SIPO_Shift_register #(parameter width=4)(
  input data,
  input clk,clr,
  output [width-1:0]out
);
  
  wire [width-1:0]w;
  DFF FF0(.clk(clk),.clr(clr),.D(data),.Q(w[0]));
  genvar i;
  generate
    for(i=1;i<width;i=i+1) begin: D
      DFF FF(.clk(clk),.clr(clr),.D(w[i-1]),.Q(w[i]));
    end
  endgenerate
  
  assign out=w;
  
endmodule
module DFF(
  input clk,clr,D,
  output reg Q
);
  always @(posedge clk or posedge clr) begin
    if(clr)
      Q <= 0;
    else
      Q <= D;
  end
  
endmodule
  

//Alternate approach
// module SIPO_Shift_register #(parameter width=4)(
//   input data,
//   input clk,clr,
//   output reg [width-1:0]out
// );
//   always @(posedge clk or posedge clr) begin
//     if(clr)
//       out <= 0;
//     else
//       out <= {out[width-2:0], data};  // shift left
//   end
  
// endmodule
