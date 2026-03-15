// Parameterized Multiplexer

module parameterized__MUX #(
  parameter WIDTH=4,   // Width of each input
  parameter N=4)       // Number of mux inputs
  (
    input [WIDTH-1:0] in [N-1:0], // Array of N inputs, each of WIDTH bits
    input  [$clog2(N)-1:0] sel, //ceiling log base 2 of N
    output reg [WIDTH-1:0]y
);
  
  always @(*) begin
    y = in[sel];
  end
endmodule
    