`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Reddy Raghu 
// 
// Create Date: 03/20/2026 03:51:55 
// Design Name: T Flip Flop Tesbench
// Module Name: TFF_tb
// Description: The testbench generates a clock, applies reset, and changes input T
//              at different times to verify that the flip-flop updates its output
//              only on the rising edge of the clock.
// 
//////////////////////////////////////////////////////////////////////////////////




module tb;
  reg clk,reset,T;
  wire Q,Q_bar;
  
  TFF uut(.clk(clk),.reset(reset),.T(T),.Q(Q),.Q_bar(Q_bar));
  
  always #5 clk = ~clk;
  integer i=0;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb);
    
    $display("clk|reset|T|Q|Q_bar");
    $monitor(" %b |  %b  |%b|%b|%b",clk,reset,T,Q,Q_bar);
    
    clk=0;
    reset=1;
    T=1;
    #5; 
    reset=0;
    
    for(i=0;i<10;i=i+1) begin
      if(i==5) begin
        reset=1'b1;
        #10;
        reset=1'b0;
      end
      else begin
        T = ~T;
        #10;
      end
      
    end
    
    $monitoroff;
    $finish;
    
  end
  
endmodule
