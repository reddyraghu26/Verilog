//Gray to Binary Converter

module gray_to_binary#(parameter width=4)(
  input [width-1:0]gry,
  output [width-1:0]bin
);
  //MSB of binary is same as the MSB of gray code
  assign bin[width-1]=gry[width-1]; 
   genvar i;
  generate
    for(i=0;i<width-1;i=i+1) begin
      // XOR with current Gray bit with next higher Binary bit
      assign bin[width-2-i] = bin[width-1-i] ^ gry[width-2-i];
    end
  endgenerate
  
endmodule

