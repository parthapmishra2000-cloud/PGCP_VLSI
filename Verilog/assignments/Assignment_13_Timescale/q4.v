`timescale 10ns/1ns //changed to 1us/1ns, frequency was 100kHz
module clk_gen();
reg clk;
initial begin
    clk = 0;
end
    always #5 clk = ~clk;
initial begin

    $monitor("Time = %f | clk = %b", $realtime, clk);
    #200 $finish;
end

endmodule