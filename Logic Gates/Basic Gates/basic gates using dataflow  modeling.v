// Implementation of basic Gates using dataflow  modeling
//Dataflow modeling describes hardware using expressions (like equations) instead of gates or procedural statements.

module basic_gates (
  input a,b,
  output x,y,z
);
  
  assign x= a&b;   //AND gate
  assign y= a|b;   //OR gate
  assign z= ~a;     //NOT gate
  
  //These are continuous assignments in dataflow modeling.
  //The output always reflects the current value of the inputs automatically.

endmodule

