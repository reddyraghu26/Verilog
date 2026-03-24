

module gray_to_binary_tb;
  parameter width=4;
  reg  [width-1:0] gry;
  wire [width-1:0] bin;
  
 gray_to_binary  uut(.bin(bin),.gry(gry));
  
  integer i;
  initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0,gray_to_binary_tb);
    
    $display(" gray | binary ");
    $monitor(" %b | %b ",gry,bin);
    
    for(i=0;i<(1<<width);i=i+1)begin
      //generating gray code from binary
       gry = i ^ (i>>1);
       #1;
    end
    #1;
    $monitoroff;
    $finish;
  end
  
endmodule