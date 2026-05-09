module MiscCircuits (
    input [3:0] m_A, m_B,   
    input [7:0] gray_in,    
    output [7:0] product,  
    output [7:0] bin_out  
);

    assign product = m_A * m_B;

    assign bin_out[7] = gray_in[7];
    assign bin_out[6] = bin_out[7] ^ gray_in[6];
    assign bin_out[5] = bin_out[6] ^ gray_in[5];
    assign bin_out[4] = bin_out[5] ^ gray_in[4];
    assign bin_out[3] = bin_out[4] ^ gray_in[3];
    assign bin_out[2] = bin_out[3] ^ gray_in[2];
    assign bin_out[1] = bin_out[2] ^ gray_in[1];
    assign bin_out[0] = bin_out[1] ^ gray_in[0];

endmodule