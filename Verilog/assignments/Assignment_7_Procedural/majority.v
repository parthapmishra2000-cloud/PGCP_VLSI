module majority(output reg y,input [3:0]a,b,c);
always @(*)begin
if((a&&b || b&&c || a&&c))
y=1'b1;
else
y=1'b0;
end
endmodule
module tb_majority;
wire y;
reg [3:0]a,b,c;
majority dut(y,a,b,c);
initial begin
$monitor("time=%0d | y=%0b | a=%0b | b=%0b | c=%0b",$time,y,a,b,c);
{a,b,c}=12'h000;
{a,b,c}=12'h001;#10
{a,b,c}=12'h010;#10
{a,b,c}=12'h011;#10
{a,b,c}=12'h100;#10
{a,b,c}=12'h101;#10
{a,b,c}=12'h110;#10
{a,b,c}=12'h111;#10
#100$finish;
end
endmodule
