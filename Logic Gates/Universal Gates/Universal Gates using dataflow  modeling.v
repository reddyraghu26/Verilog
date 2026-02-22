// Implementation of universal gates using dataflow  modeling
//Dataflow modeling describes hardware using expressions (like equations) instead of gates or procedural statements.

module Universal_gates (
  input a,b,
  output x,y
);
  
  assign x= ~(a&b);   //NAND gate
  assign y= ~(a|b);   //NOR gate
       
  
  //These are continuous assignments in dataflow modeling.
  //The output always reflects the current value of the inputs automatically.

endmodule

