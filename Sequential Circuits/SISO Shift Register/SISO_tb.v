`timescale 1ns / 1ps

module tb;
  reg data,clk,clr;
  wire out;
  reg [3:0]in;
  
  SISO uut(.clk(clk),.clr(clr),.data(data),.out(out));
  
  always #5 clk = ~clk;
  
  integer i;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb);
    in=4'b1010;
    clk=0;
    data=0;
    clr=1;
     #10;
    clr=0;
    for(i=3;i>=0;i=i-1) begin
      data=in[i];
      #10;
    end
    
    #40;
    $finish;
    
  end
  
endmodule