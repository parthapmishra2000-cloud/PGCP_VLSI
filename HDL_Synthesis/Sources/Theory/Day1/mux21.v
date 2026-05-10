module mux21 (
    input i0,i1;sel,
    output reg out
);

    assign out = sel ? i1 : i0;
    
endmodule