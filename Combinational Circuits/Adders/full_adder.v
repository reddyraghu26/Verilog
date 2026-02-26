//Implementing full Adder using Gate-Level Modeling
// Using Verilog gate primitives
module full_adder_gate(
  input A,B,Cin,
  output sum,cout
);
  wire w1,w2,w3;

  xor x1(w1,A,B);
  xor x2(sum,w1,Cin);

  and a1(w2,A,B);
  and a2(w3,w1,Cin);
  
  or r1(cout,w2,w3);
  
endmodule


// Implementing full Adder using Dataflow Modeling
// Using Boolean equations with continuous assignment

module full_adder_dataflow(
  input A,B,Cin,
  output sum,cout
);
  
  assign sum=A^B^Cin;
  assign cout=A&B|((A^B)&Cin);
  
endmodule



//Implementing full Adder using Behavioral Modeling
// Using procedural always block

module full_adder_behavioral(
  input A,B,Cin,
  output reg sum,cout
);
  
  always @(*) begin
    sum=A^B^Cin;
    cout=A&B|((A^B)&Cin);
  end
  
endmodule
