module tb;
  reg clk,reset,J,K;
  wire Q,Q_bar;
  
  JK_FF uut(clk,reset,J,K,Q,Q_bar);
  
  always #5 clk = ~clk;
  integer i;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb);
    
    $display("clk|reset|J|K|Q|Q_bar");
    $monitor(" %b |  %b  |%b|%b|%b|%b",clk,reset,J,K,Q,Q_bar);
    
    clk = 0;
    {J,K}=0;
    reset=1; 
    #5;
    reset=0;
    for(i=0;i<4;i=i+1) begin
      {J,K}=i;
      #10;
    end
    $monitoroff;
    $finish;
    
  end
  
endmodule