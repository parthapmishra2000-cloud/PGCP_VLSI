`timescale 1ns / 1ps

module range_check;
  integer num = 25;       
  integer lower = 10;     
  integer upper = 50;     

  initial begin
    if (num >= lower && num <= upper) begin
        $display("SUCCESS: %0d is WITHIN the range [%0d to %0d]", num, lower, upper);
    end else begin
        $display("FAILURE: %0d is OUTSIDE the range [%0d to %0d]", num, lower, upper);
    end
    
    $finish;
  end
endmodule
