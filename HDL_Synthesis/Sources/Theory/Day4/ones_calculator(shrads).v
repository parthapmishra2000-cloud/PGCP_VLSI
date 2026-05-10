module ones_calculator #(parameter WIDTH = 8)(
    output reg [$clog2(WIDTH):0] count, ///clog
    input      [WIDTH - 1:0]     data_in
);

    integer i;

    always @(*) begin
        count = 0;
        for (i = 0; i < WIDTH; i = i + 1) begin
            count = count + data_in[i];
        end
    end

endmodule