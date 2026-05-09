// --- SUBMODULE ---
`timescale 1us / 1ns  // Unit = 1 microsecond, Precision = 1 nanosecond
module Sub_Module(output reg sub_out);
    initial begin
        sub_out = 0;
        // This #5 refers to 5 * 1us = 5000ns
        #5 sub_out = 1; 
        $display("Submodule: Signal high at Time = %0t (Internal)", $time);
    end
endmodule

// --- TOP MODULE ---
`timescale 1ns / 1ps  // Unit = 1 nanosecond, Precision = 1 picosecond
module Top_Module();
    wire sub_out;
    reg top_out;

    // Instantiate Submodule
    Sub_Module u1(sub_out);

    initial begin
        // Format time to show in Nanoseconds for clarity
        $timeformat(-9, 2, " ns", 10);
        $monitor("TOP MONITOR | Time: %t | Top_Sig: %b | Sub_Sig: %b", $realtime, top_out, sub_out);
        
        top_out = 0;
        // This #50 refers to 50 * 1ns = 50ns
        #50 top_out = 1;
    end

    initial begin
        #6000 $finish; // Run long enough to see the submodule finish
    end
endmodule
