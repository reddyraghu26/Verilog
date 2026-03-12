// Parameterized Ripple Carry Adder

module adder #(parameter WIDTH=4)( // Number of bits of the adder
  input [WIDTH-1:0]a,b,
  input cin,
  output  [WIDTH-1:0] sum,
  output  carry
);
  wire [WIDTH:0] w; // Internal carry wires
  assign w[0]=cin;  // Initial carry input
  
  genvar i; // genvar is a special variable used only in generate loops
  generate
    for(i=0;i<WIDTH;i=i+1) begin : FA
      Full_adder FA_inst(a[i],b[i],w[i],sum[i],w[i+1]);
    end
  endgenerate
  
  assign carry=w[WIDTH];
   
endmodule
  

//Full Adder
module Full_adder(
  input a,b,c,
  output sum,carry
);
    assign sum=a^b^c;
    assign carry=(a&b)|((a^b)&c);
  
endmodule
  
  