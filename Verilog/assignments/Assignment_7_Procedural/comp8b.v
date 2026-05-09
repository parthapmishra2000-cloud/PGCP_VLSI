module comp8b(output reg gr, le, eq, input [7:0]a, b);
always @(*) begin
gr=0;le=0;eq=0;
 if(a>b)
  gr=1;
 else if(a<b)
  le=1;
 else
  eq=1;
end
endmodule

module tb_comp8b;
reg [7:0]a;
reg [7:0]b;
wire gr,le,eq;
comp8b c1(gr,le,eq,a,b);
initial begin
$monitor ("time=%0d | greater(a>b)=%0b less=%0b equal =%0b | a=%0d b=%0d ",$time,gr,le,eq,a,b);
a=8'hab; b=8'hba;
#10 a=8'hba; b=8'hab;
#10 a=8'hab; b=8'hab;
$finish;
end
endmodule