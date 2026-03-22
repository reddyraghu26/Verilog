`timescale 1ns / 1ps


module tb;
  reg [3:0]data;
  reg clk,clr;
  wire [3:0]out;
  
  PIPO #(.width(4))uut(.clk(clk),.clr(clr),.data(data),.out(out));
  
  always #5 clk = ~clk;
  
  integer i;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb);
    
    clk=0;
    data=0;
    clr=1;
     #10;
    clr=0;
    for(i=0;i<16;i=i+1) begin
      data=i;
      #10;
    end
    
    #40;
    $finish;
    
  end
  
endmodule