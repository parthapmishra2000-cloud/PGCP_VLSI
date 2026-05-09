module mux21(output reg y, input [1:0]i, input sel);
always @(*)begin
if(sel==0)
y=i[0];
else
y=i[1];
end
endmodule

module tb_mux21;
reg [1:0]i;
reg sel;
wire y;
mux21 m0(y,i,sel);
initial begin
$monitor ("time=%0d | y=%0b | i=%0b | sel=%0b",$time,y,i,sel);
i[0]=1;
i[1]=0;
sel=0;
#10 sel=1;
$finish;
end
endmodule