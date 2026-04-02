
// Parity Generator (Even Parity)
// Adds 1 bit such that total number of 1s is even
module parity_generator(
  input [3:0] G_data,
  output [4:0] out
);
  wire p;
  // XOR of all bits → 1 if odd number of 1s, else 0
  assign p = ^G_data;  //Reduction XOR operation
  assign out = {G_data,p};
endmodule

// Parity Checker
// If total number of 1s is odd → error = 1
module parity_checker(
  input [4:0] C_data,
  output error
);
  // Error = 1 when total number of 1s is odd, else 0(no error)
  assign error = ^C_data;
endmodule