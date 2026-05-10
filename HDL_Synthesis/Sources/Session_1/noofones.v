module count_ones #(parameter N = 8) (
    input  [N-1:0] in,
    output reg [$clog2(N+1)-1:0] count
);

integer i;

always @(*) begin
    count = 0;
    for (i = 0; i < N; i = i + 1) begin
        count = count + in[i];
    end
end

endmodule