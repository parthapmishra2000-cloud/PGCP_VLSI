`timescale 1us/1ns
module concurrent_delay();
reg A;

initial begin
    $monitor("Time = %t | A = %b", $time, A);
end
always@(A)begin
 #5 A = 1;
 #5 A = 0;
end
//can use always separately aswell


initial begin
    #35 $finish;
end

endmodule