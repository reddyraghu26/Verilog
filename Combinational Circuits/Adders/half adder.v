//Implementing Half Adder using Gate-Level Modeling
// Using Verilog gate primitives
module half_adder_gate(
  input A,B,
  output sum,cout
);
  
  xor x1(sum,A,B);
  and a1(cout,A,B);
  
endmodule


// Implementing Half Adder using Dataflow Modeling
// Using Boolean equations with continuous assignment

module half_adder_dataflow(
  input A,B,
  output sum,cout
);
  
  assign sum=A^B;
  assign cout=A&B;
  
endmodule



//Implementing Half Adder using Behavioral Modeling
// Using procedural always block

module half_adder_behavioral(
  input A,B,
  output reg sum,cout
);
  
  always @(*) begin
    sum=A^B;
    cout=A&B;
  end
  
endmodule
