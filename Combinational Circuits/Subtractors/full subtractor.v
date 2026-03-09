// Implementing full_subtractor using Dataflow Modeling
// Using Boolean equations with continuous assignment

module full_subtractor(
  input A,B,Bin,
  output Diff,Bow
);
  
  assign Diff=A ^ B ^ Bin;
  assign Bow=(~A) & B | ((A^B)&Bin);
  
endmodule



