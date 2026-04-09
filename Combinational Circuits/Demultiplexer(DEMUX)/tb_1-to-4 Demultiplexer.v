module tb;
  reg [1:0]sel;
  reg in;
  wire [3:0] Y;
  
  DEMUX uut (sel,in,Y);
  
  initial begin
    $display("In | sel | Y");
    $monitor("%b | %b | %b",in,sel,Y);
    in =1;
    sel = 0;
    #1;
    sel = 1;
     #1;
    sel = 2;
     #1;
    sel = 3;
     #1;
    $finish;
  end
  
endmodule