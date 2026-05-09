module Multiplexers (
    input [15:0] in,      
    input [3:0] sel,    
    output out_2to1,     
    output out_4to1,    
    output out_16to1    
);

    assign out_2to1 = sel[0] ? in[1] : in[0];

    assign out_4to1 = (sel[1:0] == 2'b00) ? in[0] :
                      (sel[1:0] == 2'b01) ? in[1] :
                      (sel[1:0] == 2'b10) ? in[2] : in[3];

    assign out_16to1 = (sel == 4'h0) ? in[0]  : (sel == 4'h1) ? in[1]  :
                       (sel == 4'h2) ? in[2]  : (sel == 4'h3) ? in[3]  :
                       (sel == 4'h4) ? in[4]  : (sel == 4'h5) ? in[5]  :
                       (sel == 4'h6) ? in[6]  : (sel == 4'h7) ? in[7]  :
                       (sel == 4'h8) ? in[8]  : (sel == 4'h9) ? in[9]  :
                       (sel == 4'hA) ? in[10] : (sel == 4'hB) ? in[11] :
                       (sel == 4'hC) ? in[12] : (sel == 4'hD) ? in[13] :
                       (sel == 4'hE) ? in[14] : in[15];

endmodule