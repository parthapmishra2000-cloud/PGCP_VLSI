module comparator_para#(parameter N = 4) (
    input  [N-1:0] A, B,
    output A_greater, A_equal, A_less
);

assign A_greater = (A > B);
assign A_equal   = (A == B);
assign A_less    = (A < B);

endmodule