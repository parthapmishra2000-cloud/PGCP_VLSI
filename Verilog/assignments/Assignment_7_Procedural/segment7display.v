module seg7d(output reg [6:0]y, input[3:0]binary);
always @(*)begin
case (binary)

4'h0 : y=7'b1111110;
4'h1 : y=7'b0110000;
4'h2 : y=7'b1101101;
4'h3 : y=7'b1111001;
4'h4 : y=7'b0110011;
4'h5 : y=7'b1011011;
4'h6 : y=7'b1011111;
4'h7 : y=7'b1110000;
4'h8 : y=7'b1111111;
4'h9 : y=7'b1111011;
endcase
end
endmodule

module tb_seg7d;
reg [3:0]binary;

wire [6:0]y;
seg7d c1(y,binary);
initial begin
$monitor ("time=%0d | y=%0b binary=%0b ",$time,y,binary);
binary=4'h8;
#10 binary =4'h7;
#10 binary =4'h4;
$finish;
end
endmodule

