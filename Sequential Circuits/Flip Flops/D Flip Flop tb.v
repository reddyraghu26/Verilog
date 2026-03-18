`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2026 10:57:20 PM
// Design Name: 
// Module Name: tb
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


`timescale 1ns/1ps
module tb;
  reg clk;
  reg D;
  reg reset;
  wire Q;
  
  DFF uut (.clk(clk),.reset(reset),.D(D),.Q(Q));
  
  // Clock generation: 10ns period 
  always #5 clk = ~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
     
    $display("clk|reset|D|Q");
    $monitor("%b|%b|%b|%b",clk,reset,D,Q);
    // Initialize signals
    clk=0;
    D=0;
    reset=1;
    
    #10; reset=0;
    #10; D=1;
    #10; D=0;
    #10; D=1;
    #3; reset =1;
    #7; reset =0;
    #10; D=0;
    #10; D=1;
    
    #20 ; $finish;
  end
  
endmodule
    
    
  
  
  
  
