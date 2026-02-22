// Implementation of special Gates using gate-level modeling

module special_gates (
  input a,b,c,d,
  output x,y
);
  
  xor  X1(x,a,b);
  xnor X2(y,c,d);
  
//xor,xnor should be in lower case
  
endmodule

