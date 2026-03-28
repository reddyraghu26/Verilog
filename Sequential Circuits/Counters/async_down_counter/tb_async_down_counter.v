`timescale 1ns / 1ps

module tb;
  parameter width=2;
  reg clk,clr;
  wire [width-1:0] count;
  
 async_down_counter uut(.clk(clk),
                       .clr(clr),
                       .count(count)
                      );
  
  
  always #5 clk = ~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb);
   
    clk=0;
    clr=1;
    #10;
    clr=0;
    
    #100;
    $finish;
  end
endmodule