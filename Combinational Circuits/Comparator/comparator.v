// Parameterized comparator to compare two inputs of configurable width
// Compares A and B and generates equal, greater, and less signals
// Width parameter allows the comparator size to be easily changed
module comparator #(parameter width=2)(
  input [width-1:0]A,B,
  output eql,gret,less
);

    assign eql=(A==B);
    assign gret=(A>B);
    assign less=(A<B);
 
endmodule