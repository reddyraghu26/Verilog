//BCD adder
//A BCD adder adds two decimal digits represented in Binary Coded Decimal (BCD) format.
//If the binary sum is greater than 9, the circuit adds 6 (0110) to produce a valid BCD result.

module BCD_adder(
  input [3:0] A,B,
  input cin,
  output [3:0]sum,
  output carry
);
  wire [3:0] w;
  wire wc1,wc2;
  
    // First stage: binary addition of A, B, and cin
  adder_4bit A1(.A(A),.B(B),.cin(cin),.sum(w),.carry(wc1));
  
  assign wc2= w[1] & w[3] | w[2] & w[3] | wc1;
  
   // Second stage: add 6 (0110) if correction is required
  adder_4bit A2(.A(w),.B({1'b0,wc2,wc2,1'b0}),.cin(1'b0),.sum(sum),.carry());
  
  assign carry =wc2;
  
  
endmodule


// 4-bit Ripple Carry Adder
// Built using four full adders connected in series

module adder_4bit(
  input [3:0] A,B,
  input cin,
  output [3:0] sum,
  output carry
);
  
  // Internal carries between full adders
  wire w1,w2,w3;
  
  Full_adder FA1(.A(A[0]),.B(B[0]),.Cin(cin),.Sum(sum[0]),.Carry(w1));
  Full_adder FA2(.A(A[1]),.B(B[1]),.Cin(w1),.Sum(sum[1]),.Carry(w2));
  Full_adder FA3(.A(A[2]),.B(B[2]),.Cin(w2),.Sum(sum[2]),.Carry(w3));
  Full_adder FA4(.A(A[3]),.B(B[3]),.Cin(w3),.Sum(sum[3]),.Carry(carry));
  
endmodule


//Full adder
module Full_adder(
  input A,B,Cin,
  output Sum,Carry
);
  assign Sum= A^B^Cin;
  assign Carry= A&B | ((A^B)&Cin);
  
endmodule