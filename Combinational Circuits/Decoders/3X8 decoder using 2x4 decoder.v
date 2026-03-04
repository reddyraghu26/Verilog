//3X8 decoder using 2x4 decoder
module Decoder_3X8(
  input I0,I1,E,
  output [7:0] Y
);
  wire w1=~E;
  Decoder_2X4 D1(.I({I1,I0}),.E(w1),.Y(Y[3:0]));
  Decoder_2X4 D2(.I({I1,I0}),.E(E),.Y(Y[7:4]));
  
  
endmodule


//2X4 decoder
module Decoder_2X4(
  input [1:0] I,
  input E,
  output reg [3:0] Y
);
  
  always @(*) begin
    Y=4'b0000;
    if(E) begin
      if(I==2'b00)
        Y[0]=1'b1;
      else if(I==2'b01)
        Y[1]=1'b1;
      else if(I==2'b10)
        Y[2]=1'b1;
      else if(I==2'b11)
        Y[3]=1'b1;
    end
    
  end
  
endmodule