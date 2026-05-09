module Adders (
    input [3:0] A, B, C,    
    output [3:0] cla_sum,
    output cla_cout,
    output [3:0] csa_sum,   
    output [3:0] csa_cout   
);
    // CLA
    wire [3:0] G = A & B;   
    wire [3:0] P = A ^ B;   
    wire [4:0] c;           
    
    assign c[0] = 1'b0;
    assign c[1] = G[0] | (P[0] & c[0]);
    assign c[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & c[0]);
    assign c[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & c[0]);
    assign c[4] = G[3] | (P[3] & c[3]);

    assign cla_sum = P ^ c[3:0];
    assign cla_cout = c[4];

    // CSA
   
    assign csa_sum  = A ^ B ^ C;
    assign csa_cout = (A & B) | (B & C) | (A & C);
endmodule