module cross2 #(
    parameter NUM = 2
) ( 
    input [N-1:0] a,
    output [N-1:0] b
);
    assign y = (x << 1) + (x << 1);
    
endmodule