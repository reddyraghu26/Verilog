
module tb;
  parameter width=4;
  reg data;
  reg clk,clr;
  wire [width-1:0] out;
  
  SIPO_Shift_register #(.width(4))uut(.clk(clk),.clr(clr),.data(data),.out(out));
  
  always #5 clk = ~clk;
  
  integer i;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb);
    
    clk=0;
    clr=1;
    #1;
    clr=0;
    data=1;
    #10;
    for(i=0;i<width-1;i=i+1) begin
      data=i;
      #10;
    end
    
    $finish;
    
  end
  
endmodule