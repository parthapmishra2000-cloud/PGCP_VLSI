`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2026 08:08:50
// Design Name: 
// Module Name: pulse_gen
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

module pulseGen #(parameter WIDTH = 10)(
  input                     clk,
  input                     rst,
  input      [WIDTH-1:0]   N,
  output reg                out
);

  reg [WIDTH-1:0] count;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      count <= 0;
      out <= 0;
    end 
    else begin
      if (count == N-1) begin
        count <= 0;
        out <= 1;   
      end 
      else begin
        count <= count + 1;
        out <= 0;
      end
    end
  end

endmodule