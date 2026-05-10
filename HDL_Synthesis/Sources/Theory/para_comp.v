module para_comp #(parameter N = 16)(
    input  [N - 1:0] a,
    input  [N - 1:0] b,
    output           equal,
    output           greater,
    output           smaller
);
    assign equal   = (a == b) ? 1 : 0;
    assign greater = (a > b)  ? 1 : 0;
    assign smaller = (a < b)  ? 1 : 0;

endmodule
