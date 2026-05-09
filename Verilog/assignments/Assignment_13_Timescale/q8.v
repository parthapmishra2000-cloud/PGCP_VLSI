`timescale 10ns/1ns

module precision;
reg a;
initial begin
$monitor("realTime=%0t Time=%0t a=%0b",$realtime,$time,a);
#1.7 a=0;
#1.7 a=1;
#10 $finish;
end
endmodule