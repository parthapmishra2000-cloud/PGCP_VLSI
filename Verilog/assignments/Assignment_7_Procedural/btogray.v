module grayb(output reg [3:0]gray, input[3:0]binary);
always @(*)begin
case (binary)

4'h0 : gray=4'b0000;
4'h1 : gray=4'b0001;
4'h2 : gray=4'b0011;
4'h3 : gray=4'b0010;
4'h4 : gray=4'b0110;
4'h5 : gray=4'b0111;
4'h6 : gray=4'b0101;
4'h7 : gray=4'b0100;
4'h8 : gray=4'b1100;
4'h9 : gray=4'b1101;
4'hA : gray=4'b1111;
4'hB : gray=4'b1110;
4'hC : gray=4'b1010;
4'hD : gray=4'b1011;
4'hE : gray=4'b1001;
4'hF : gray=4'b1000;
endcase
end
endmodule

module tb_grayy;
reg [3:0]binary;

wire [3:0]gray;
grayb c1(gray,binary);
initial begin
$monitor ("time=%0d | gray=%0b binary=%0b ",$time,gray,binary);
binary=8'ha;
#10 binary =8'h7;
#10 binary =8'h4;
$finish;
end
endmodule

