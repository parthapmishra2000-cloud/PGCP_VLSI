`timescale 1ns/10ps

module precision;
reg a;
initial begin
$monitor("Time=%0.3f a=%0b",$realtime,a);
#2.65 a=0;
#2.6 a=1;
end
endmodule