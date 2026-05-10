module mux361(
    output reg        out,
    input      [35:0] in,
    input      [5:0]  sel
);
    always @(*) begin
        if (sel < 36)
            out = in[sel];
        else 
            out = 1'b0;
    end

endmodule