module odd_evenp(output reg odd,even, input[7:0]a);
integer count=0;
integer i;

always @(*) begin
odd=0; even=0;
for(i=0;i<8;i++)
begin
if(a[i]==1)
count=count+1;
end
if(count%2==0)
even=1;
else
odd=1;
end
endmodule

module tb_oddev;
reg [7:0]a;
wire odd,even;
odd_evenp p1(odd,even,a);
initial begin 
$monitor("time=%0d odd=%0b even=%0b a=%0b",$time,odd,even,a);
a=8'b00001100;
#10 a=8'b00111000;
$finish;
end 
endmodule