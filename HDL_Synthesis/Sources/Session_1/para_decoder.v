module parameterized_decoder #(parameter N = 4) (
    output reg [2**N - 1:0] out,
    input  [N - 1:0]    in
    );
    
    always @(*) begin
        out     =  'b0;
        out[in] = 1'b1;
    end

endmodule