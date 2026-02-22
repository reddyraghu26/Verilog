// Implementation of special gates using dataflow  modeling
//Dataflow modeling describes hardware using expressions (like equations) instead of gates or procedural statements.

module special_gates (
  input a,b,
  output x,y
);
  
  assign x= a^b;      //XOR  gate
  assign y= ~(a^b);   //XNOR gate
       
  
  //These are continuous assignments in dataflow modeling.
  //The output always reflects the current value of the inputs automatically.

endmodule

