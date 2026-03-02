
module MUX_16X1(
  input [15:0] I,
  input [3:0] S,
  output Y
);
  
  wire [7:0]L1;
  wire [3:0]L2;
  wire [1:0]L3;
  
  //Level 1
  MUX_2X1 M1(I[0] ,I[1] ,S[0],L1[0]);
  MUX_2X1 M2(I[2] ,I[3] ,S[0],L1[1]);
  MUX_2X1 M3(I[4] ,I[5] ,S[0],L1[2]);
  MUX_2X1 M4(I[6] ,I[7] ,S[0],L1[3]);
  MUX_2X1 M5(I[8] ,I[9] ,S[0],L1[4]);
  MUX_2X1 M6(I[10],I[11],S[0],L1[5]);
  MUX_2X1 M7(I[12],I[13],S[0],L1[6]);
  MUX_2X1 M8(I[14],I[15],S[0],L1[7]);
  
  //Level 2
  MUX_2X1 M9(L1[0] ,L1[1] ,S[1],L2[0]);
  MUX_2X1 M10(L1[2] ,L1[3] ,S[1],L2[1]);
  MUX_2X1 M11(L1[4] ,L1[5] ,S[1],L2[2]);
  MUX_2X1 M12(L1[6] ,L1[7] ,S[1],L2[3]);
  
  //Level 3
  MUX_2X1 M13(L2[0] ,L2[1] ,S[2],L3[0]);
  MUX_2X1 M14(L2[2] ,L2[3] ,S[2],L3[1]);
  
  //Level 4
  MUX_2X1 M15(L3[0] ,L3[1] ,S[3],Y);
              
  
  
endmodule

module MUX_2X1(
  input I0,I1,S,
  output Y
);

  assign Y=(~S&I0)|(S&I1);
  
endmodule