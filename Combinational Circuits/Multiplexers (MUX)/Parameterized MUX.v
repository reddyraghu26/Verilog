
module parameterized__MUX #(parameter WIDTH=4,parameter N=4)(
  input [WIDTH-1:0] in [N-1:0],
  input  [$clog2(N)-1:0] sel,
  output reg [WIDTH-1:0]y
);
  
  always @(*) begin
    y = in[sel];
  end
endmodule
    