`timescale 1ns/10ps

module precision;
integer start,endt;
reg a;
initial begin
start=$time;
#3 a=0;

#4 a=1;
endt=$time;
$display("Pulse width = %0d",endt-start);
end
endmodule