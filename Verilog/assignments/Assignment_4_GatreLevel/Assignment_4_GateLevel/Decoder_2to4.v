`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AMD
// Engineer: Abhinav and Partha
// 
// Create Date: 31.03.2026 19:02:50
// Design Name: Humara Assignment
// Module Name: Decoder_2to4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Decoder_2to4(output [3:0]Y, input [1:0]A,en);

wire k1,k2;

nand in1(k1,A[0],A[1]),
in2(k2, A[0],A[1]);

nand na1(Y[0],k1,k2,en),
na2(Y[1],A[0],k2,en),
na3(Y[2],k1,A[1],en),
na4(Y[3],A[0],A[1],en);

endmodule