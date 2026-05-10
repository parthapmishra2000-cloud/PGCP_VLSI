`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2026 08:00:19
// Design Name: 
// Module Name: mux361
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


module mux361(
    output reg        out,///Important indent
    input      [35:0] in,
    input      [5:0]  ssel
);
    always @(*) begin
        if (sel < 36)
            out = in[sel];
        else 
            out = 1'b0;
    end

endmodule