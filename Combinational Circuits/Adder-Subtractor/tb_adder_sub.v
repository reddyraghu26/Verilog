`timescale 1ns / 1ps

module tb;
  parameter width=4;
  reg [width-1:0]A,B;
  reg Mode;
  wire [width-1:0]sum;
  wire carry;
  
  adder_sub uut(.A(A),
         .B(B),
         .M(Mode),
         .sum(sum),
         .carry(carry)
        );
  
  initial begin
    $display("M|A |B |S |C");
    $monitor("%b|%d|%d|%d|%b",Mode,A,B,sum,carry);
    Mode=0;
    A=10; B=2; #1;
    A=15; B=1; #1;
    A=0;  B=15;#1;
    
 
    Mode=1;
    A=10; B=2;  #1;
    A=10; B=15; #1;
    A=0;  B=15; #1;
    
    $finish;
    
  end
endmodule
