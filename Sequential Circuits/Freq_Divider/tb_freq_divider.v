`timescale 1ns / 1ps

module tb_freq_divider;
  reg clk,reset;
  wire clk_out;
  
  Freq_Divider uut (clk,reset,clk_out);
  
  always #5 clk = ~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_freq_divider);
    
    clk=0;
    reset=1;
    #5;
    reset=0;
    
    #200;
    $finish;
    
  end
endmodule
