//Implementing half_subtractor using Gate-Level Modeling
// Using Verilog gate primitives
module half_subtractor(
  input A,B,
  output Diff,Bow
);
  
  xor x1(Diff,A,B);
  and a1(Bow,~A,B);
  
endmodule


// Implementing half_subtractor using Dataflow Modeling
// Using Boolean equations with continuous assignment

module half_subtractor_dataflow(
  input A,B,
  output Diff,Bow
);
  
  assign Diff=A ^ B;
  assign Bow=(~A) & B;
  
endmodule



//Implementing Half Adder using Behavioral Modeling
// Using procedural always block

module half_subtractor_behavioral(
  input A,B,
  output reg Diff,Bow
);
  
  always @(*) begin
    Diff=A ^ B;
    Bow=(~A) & B;
  end
  
endmodule
