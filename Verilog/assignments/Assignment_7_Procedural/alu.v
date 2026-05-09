module alu(output reg [3:0]aluout,output reg cout, input [3:0]a,b, input [1:0]mode);
always @(*)begin
case(mode)
2'b00 : {cout,aluout}= a+b;
2'b01: begin
cout=a<b;
aluout=a-b;
end
2'b10: aluout=a&b;
2'b11: aluout=a|b;
endcase
end

endmodule


module tb_alu;
wire [3:0]aluout;
wire cout;
reg [3:0]a;
reg [3:0]b;
reg [1:0]mode;
alu dut(aluout,cout,a,b,mode);
initial begin
$monitor("time=%0d | aluout=%0b | cout=%0b | a=%0b | b=%0b | mode=%0b",$time,aluout,cout,a,b,mode);
a=4'b0000;b=4'b0000;mode= 2'b00;
#10 a=4'b0010;b=4'b0110;mode= 2'b01;
#10 a=4'b1001;b=4'b0011;mode= 2'b10;
#10 a=4'b0110;b=4'b1000;mode= 2'b11;
$finish;
end
endmodule