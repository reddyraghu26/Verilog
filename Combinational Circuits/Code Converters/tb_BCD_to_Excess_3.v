`timescale 1ns / 1ps

module tb;
  reg [3:0] BCD;
  wire [3:0] excess_3;
  
  BCD_to_Excess_3 uut(.BCD(BCD),.excess_3(excess_3));
  
  integer i;
  initial begin
    $display("binary|Excess 3");
    $monitor(" %b | %b ",BCD,excess_3);
    
    // Apply all valid BCD inputs (0-9)
    for(i=0;i<10;i=i+1) begin
      BCD=i;
      #1;
    end
    
    #1;
    $finish;
  end
  
endmodule
