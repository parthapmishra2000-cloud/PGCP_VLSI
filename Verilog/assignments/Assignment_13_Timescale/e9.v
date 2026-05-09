`timescale 1ns/1ps

module precision;
  reg a;
  integer i;

  initial begin
    i = 0;
    a = 0;
    
    // Start monitor once at the beginning
    $monitor("Time=%0.3f | i=%0d | a=%0b", $realtime, i, a);
    
    // Use a loop to increment delays sequentially
       repeat (10) begin
      i = i + 1;    // First, update the value
      #i a = 0;     // Then, wait for that amount of time

      i = i + 1;    // Update again
      #i a = 1;     // Wait for the new amount
    end
    end
initial
    #50 $finish;
endmodule
