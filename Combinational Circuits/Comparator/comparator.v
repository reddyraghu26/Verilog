module comparator #(parameter width=2)(
  input [width-1:0]A,B,
  output eql,gret,less
);

    assign eql=(A==B);
    assign gret=(A>B);
    assign less=(A<B);
 
endmodule