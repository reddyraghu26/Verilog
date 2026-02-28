module adder_4bit(
  input [3:0]a,b,
  input cin,
  output  [3:0] sum,
  output  carry
);
  wire c0,c1,c2;
  
  Full_adder F1(a[0],b[0],cin,sum[0],c0);
  Full_adder F2(a[1],b[1],c0,sum[1],c1);
  Full_adder F3(a[2],b[2],c1,sum[2],c2);
  Full_adder F4(a[3],b[3],c2,sum[3],carry);
  
endmodule
  
module Full_adder(
  input a,b,c,
  output reg sum,carry
);
  
  always@(*)begin
    sum=a^b^c;
    carry=(a&b)|((a^b)&c);
  end
endmodule
  
  