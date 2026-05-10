`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2026 06:49:52
// Design Name: 
// Module Name: cross2
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


module cross2 #(
    parameter NUM = 8
) ( 
    input [NUM-1:0] a,
    output [NUM-1:0] b
);
    assign b = a << 1;

endmodule