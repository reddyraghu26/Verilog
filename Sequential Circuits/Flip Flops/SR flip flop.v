module SR_FF(
  input clk,S,R,
  output reg QN,
  output QN_bar
);
  
  assign QN_bar = ~QN;
  
  always @(posedge clk) begin
    //Reset
    if(S==0 && R==1) begin
      QN <= 1'b0;
    end
    //Set
    else if(S==1 && R==0) begin
      QN <= 1'b1;
    end
    //Invalid 
    else if(S==1 && R==1) begin
      QN <= 1'bx;
    end
      
  end
endmodule