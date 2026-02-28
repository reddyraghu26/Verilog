//Gate-level modeling
module MUX_2X1_G(
  input I0,I1,S,
  output Y
  );
  
  wire w1,w2,w3;
  
  not n1(w1,S);
  and a1(w2,I0,w1);
  and a2(w3,I1,S);
  or r1(Y,w2,w3);
  
endmodule
  

//Dataflow modeling
module MUX_2X1_D(
  input I0,I1,S,
  output Y
);
  
  assign Y =~S&I0|S&I1;
  
endmodule
  

//Behavioural modeling
module MUX_2X1_B(
  input I0,I1,S,
  output reg Y
);
  
  always @(*) begin
    Y=~S&I0|S&I1; 
    //Y= S?I1:I0;
  end
endmodule