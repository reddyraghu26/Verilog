//Implementing basic gates using bhevioural modeling
//In this modeling we procedural block to describe how the hardware behaves.
module basic_gates(
  input a,b,
  output reg x,y,z  
);
  
  //'*' means the block executes whenever any signal used on the RHS inside this always block changes 
  always @(*) begin
    x=a&b;     //AND gate
    y=a|b;     //OR gate
    z=~a;      //NOT gate
  end
  //x,y and z shoulb be reg because they are assigned in an always block
  
  
endmodule
    
    
  