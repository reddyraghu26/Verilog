// Code your design here
// Implementation of basic Gates  using gate-level modeling

module basic_gates (
  input a,b,c,d,e,
  output x,y,z
);
  
  and A1(x,a,b);
  or R1(y,c,d);
  not N1(z,e);

//verilog is  case sensitive
//and,or,not all these should be in lower case
  
endmodule

