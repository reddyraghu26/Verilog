// Implementation of Universal Gates using gate-level modeling

module Universal_gates (
  input a,b,c,d,
  output x,y
);
  
  nand N1(x,a,b);
  nor R1(y,c,d);
  
//nand,nor should be in lower case
  
endmodule

