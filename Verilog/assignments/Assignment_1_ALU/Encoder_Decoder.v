module Decoders_Encoders (
    input [1:0] dec2to4_in,      
    input [2:0] dec3to8_in,      
    input [3:0] enc4to2_in,      
    output [3:0] dec2to4_out,    
    output [7:0] dec3to8_out,    
    output [1:0] enc4to2_out,    
    output [1:0] prio_out,       
    output valid                
);

    assign dec2to4_out = (dec2to4_in == 2'b00) ? 4'b0001 :
                         (dec2to4_in == 2'b01) ? 4'b0010 :
                         (dec2to4_in == 2'b10) ? 4'b0100 : 4'b1000;

    assign dec3to8_out = (dec3to8_in == 3'b000) ? 8'b00000001 :
                         (dec3to8_in == 3'b001) ? 8'b00000010 :
                         (dec3to8_in == 3'b010) ? 8'b00000100 :
                         (dec3to8_in == 3'b011) ? 8'b00001000 :
                         (dec3to8_in == 3'b100) ? 8'b00010000 :
                         (dec3to8_in == 3'b101) ? 8'b00100000 :
                         (dec3to8_in == 3'b110) ? 8'b01000000 : 8'b10000000;

    assign enc4to2_out = (enc4to2_in == 4'b0001) ? 2'b00 :
                         (enc4to2_in == 4'b0010) ? 2'b01 :
                         (enc4to2_in == 4'b0100) ? 2'b10 : 2'b11;

 
    assign prio_out = (enc4to2_in[3]) ? 2'b11 :
                      (enc4to2_in[2]) ? 2'b10 :
                      (enc4to2_in[1]) ? 2'b01 : 2'b00;

    assign valid = |enc4to2_in; 

endmodule