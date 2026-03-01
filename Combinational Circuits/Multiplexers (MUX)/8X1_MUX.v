module MUX_8X1(
  input [7:0]I,
  input s0,s1,s2,
  output Y
);
  wire w1,w2,w3,w4,w5,w6;
  
  //Level 1
  MUX_2X1 M1(.I0(I[0]),.I1(I[1]),.S(s0),.Y(w1));
  MUX_2X1 M2(.I0(I[2]),.I1(I[3]),.S(s0),.Y(w2));
  MUX_2X1 M3(.I0(I[4]),.I1(I[5]),.S(s0),.Y(w3));
  MUX_2X1 M4(.I0(I[6]),.I1(I[7]),.S(s0),.Y(w4));
  
  //Level 2
  MUX_2X1 M5(.I0(w1),.I1(w2),.S(s1),.Y(w5));
  MUX_2X1 M6(.I0(w3),.I1(w4),.S(s1),.Y(w6));
  
  //Level 3
  MUX_2X1 M7(.I0(w5),.I1(w6),.S(s2),.Y(Y));
  
endmodule


module MUX_2X1(
  input I0,I1,S,
  output Y
);
    assign Y=~S&I0|S&I1; 
  
endmodule