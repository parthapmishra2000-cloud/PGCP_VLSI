module prior83(output reg[2:0]y, input [7:0]i);
always @(*)begin
casex(i)
8'bxxxxxxx1 : y = 3'b000;
8'bxxxxxx10 : y = 3'b001;
8'bxxxxx100 : y = 3'b010;
8'bxxxx1000 : y = 3'b011;
8'bxxx10000 : y = 3'b100;
8'bxx100000 : y = 3'b101;
8'bx1000000 : y = 3'b110;
8'b10000000 : y = 3'b111;
default     : y = 3'b000;
endcase
end
endmodule

module tb_prior;
wire [2:0]y;
reg [7:0]i;
prior83 dut(y,i);
initial begin
$monitor("time=%0d | i=%0b | y=%0b",$time,i,y);
i=8'ha;
#10 i=8'h4;
#10 i=8'h2;
$finish;
end
endmodule

