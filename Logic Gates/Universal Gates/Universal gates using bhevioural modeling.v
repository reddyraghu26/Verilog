//Implementing universal gates using bhevioural modeling
//In this modeling we procedural block to describe how the hardware behaves.
module Universal_gates(
  input a,b,
  output reg x,y  
);
  
  //'*' means the block executes whenever any signal used on the RHS inside this always block changes 
  always @(*) begin
    x=~(a&b);     //NAND gate
    y=~(a|b);     //NOR  gate
        
  end
  //x and y shoulb be reg, because they are assigned in an always block
  
  
endmodule
    
    
  