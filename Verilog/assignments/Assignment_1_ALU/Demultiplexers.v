module Demultiplexers (
    input data_in,       
    input [1:0] sel,      
    output [1:0] out_1to2, 
    output [4:0] out_1to4 
);

    assign out_1to2[0] = (~sel[0]) & data_in;
    assign out_1to2[1] = (sel[0])  & data_in;

    assign out_1to4[0] = (sel == 2'b00) ? data_in : 1'b0;
    assign out_1to4[1] = (sel == 2'b01) ? data_in : 1'b0;
    assign out_1to4[2] = (sel == 2'b10) ? data_in : 1'b0;
    assign out_1to4[3] = (sel == 2'b11) ? data_in : 1'b0;

endmodule