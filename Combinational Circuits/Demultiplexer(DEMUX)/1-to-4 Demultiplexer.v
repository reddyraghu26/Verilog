
//Demultiplexer
module DEMUX (
  input [1:0]sel,
  input in,
  output reg [3:0]Y
);
  always @(*) begin
    Y = 0;
    case(sel)
      2'b00 : Y[0] = in;
      2'b01 : Y[1] = in;
      2'b10 : Y[2] = in;
      2'b11 : Y[3] = in;
      default : Y = 4'b0000;
    endcase
  end
endmodule


//Alternate way and the best way 
// module DEMUX (
//   input [1:0]sel,
//   input in,
//   output reg [3:0]Y
// );
//   always @(*) begin
//     Y=4'b0000;
//     Y[sel] = in;
//   end

// endmodule


  