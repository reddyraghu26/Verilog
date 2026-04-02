module tb;
  reg [3:0] G_data;
  wire [4:0] out;
  
  reg [4:0] C_data;
  wire error;
  
  parity_generator gen(.G_data(G_data),
                       .out(out)
                      );
  
  parity_checker check(.C_data(C_data),
                     .error(error)
                    );
  
  initial begin
    $monitor("G_data=%b| Out=%b | C_data=%b | Error=%b",
             G_data,out,C_data,error);
    G_data=4'b1010;
    C_data = 5'b10100;
    #10;
    G_data = 4'b1010;
    C_data = 5'b10101;
    #10;
    G_data=4'b1110;
    C_data=5'b11101;
    #10;
    G_data=4'b1110;
    C_data=5'b10101;
    #10;
    G_data = 4'b0000; 
    C_data = 5'b00000; 
    #10;
    G_data = 4'b1111; 
    C_data = 5'b11110; 
    #10;
    G_data = 4'b0001;
    C_data = 5'b00011; 
    #10;
    $finish;
  end
    
endmodule