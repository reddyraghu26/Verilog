`timescale 1ns / 1ps

module binary_to_gray_tb;
  parameter width=4;
  reg [width-1:0] bin;
  wire [width-1:0] gry;
  
 binary_to_gray #(.width(width)) uut(.bin(bin),.gry(gry));
  
  integer i;
  initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0,binary_to_gray_tb);
    
    $display(" bin | gray ");
    $monitor(" %b | %b ",bin,gry);
    
    for(i=0;i<(1<<width);i=i+1)begin
      bin=i;
      #1;
    end
    #1;
    $monitoroff;
    $finish;
  end
  
endmodule
