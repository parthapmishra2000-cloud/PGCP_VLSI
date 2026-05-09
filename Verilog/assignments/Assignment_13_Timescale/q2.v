`timescale 1ns/1ps
module A(output Y);
reg Y;
initial begin
$monitor($time,", Y = ",Y);
#5 Y = 1;
end
endmodule

`timescale 1us/1ns
module B(output Y);
reg Y;
initial begin
$monitor($time,", Y = ",Y);
#5 Y = 1;
end
endmodule