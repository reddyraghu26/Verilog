module JK_FF(
  input clk,reset,J,K,
  output reg Q,
  output Q_bar
  
);
  assign Q_bar = ~Q;
  always @(posedge clk or posedge reset) begin
    if(reset)
      Q <= 1'b0;
    //Hold
    else if(~J && ~K)
      Q <= Q;
    //Reset
    else if(~J &&  K)
      Q <= 1'b0;
    //Set
    else if(J && ~K)
      Q <= 1'b1;
    //Toggle
    else if(J && K)
      Q <= ~Q;
    
  end
  
endmodule