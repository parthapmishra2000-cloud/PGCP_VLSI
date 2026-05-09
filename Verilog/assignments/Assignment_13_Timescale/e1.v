`timescale 1us/1us

module basic_delay;

reg a;
initial begin
$monitor("Time=%0t | a=%0b",$time,a);
#10 a=1;
#10 a=0;
end
endmodule                  