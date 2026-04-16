// Double Dabble Algorithm (Shift-and-Add-3)
// Converts 8-bit binary input to 3-digit BCD output

module Binary_BCD(
  input [7:0] bin,
  output reg [11:0] BCD
);
  reg [11:0] w;
  integer i;
  always @(*) begin
    w=0;
    for(i=0;i<8;i=i+1) begin
      // add-3 correction to keep BCD digits valid (0–9)
      if(w[3:0]>4)
        w[3:0] = w[3:0] + 4'b0011;
      
      if(w[7:4]>4)
        w[7:4] = w[7:4] + 4'b0011;
      
      if(w[11:8]>4)
        w[11:8] = w[11:8] + 4'b0011;
      
      // shift left to make space for next bit
      w = w<<1;
      
        // insert next binary bit into LSB
      w[0] = bin[7-i];
   
    end  
  end
  // final BCD result
  assign BCD = w;
endmodule