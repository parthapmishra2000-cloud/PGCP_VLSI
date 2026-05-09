module clock_gen(output reg clk, input [7:0]count);

task clock;
input  [7:0]t1;
output clok;
integer i;
for(i=0;i<=t1;i=i+1)
begin
clk=1;
#(t1) clk=0;
#(t1) clk=1;
end
endtask

always @(*) begin
clock(count,clk);
end
endmodule

module tb_clock;
wire clk;
reg [7:0]c;
clock_gen g1(clk,c);

initial begin
$monitor("Clk=%0b | Time=%0d",clk,$time);
c=8'h0f;
#100 $finish;
end
initial begin
$dumpfile("dump.vcd");
$dumpvars();
end
endmodule