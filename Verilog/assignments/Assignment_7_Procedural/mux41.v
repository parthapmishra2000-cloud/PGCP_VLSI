module mux41(output reg y, input [3:0]i, input [1:0]sel);
always @(*)begin
if(sel==2'b00)
y=i[0];
else if(sel==2'b01)
y=i[1];
else if(sel==2'b10)
y=i[2];
else
y=i[3];

end
endmodule

module tb_mux41;
reg [3:0]i;
reg [1:0]sel;
wire y;
mux41 m1(y,i,sel);
initial begin
$monitor ("time=%0d | y=%0b | i=%0b | sel=%0d",$time,y,i,sel);
i=4'b1010;
sel=0;
#10 sel=1;
#10 sel=2;
#10 sel=3;
$finish;
end
endmodule