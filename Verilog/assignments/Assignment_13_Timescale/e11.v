// --- Domain 1: Fast Clock ---
`timescale 1ns / 1ps
module fast_clk_domain(output reg clk1);
    initial clk1 = 0;
    always #1 clk1 = ~clk1; // Toggles every 5ns
endmodule

// --- Domain 2: Slow Clock ---
`timescale 1us / 1ns
module slow_clk_domain(output reg clk2);
    initial clk2 = 0;
    always #1 clk2 = ~clk2; // Toggles every 5us (5000ns)
endmodule

// --- Top Level Simulation ---
`timescale 1ns / 1ps
module tb_clock_mismatch;
    wire clk1, clk2;

    // Instantiate modules
    fast_clk_domain m1(clk1);
    slow_clk_domain m2(clk2);

    initial begin
        $timeformat(-9, 0, " ns", 10);
        $monitor("Time: %t | clk1 (1ns domain): %b | clk2 (1us domain): %b", 
                 $realtime, clk1, clk2);
        
        // Run for 15us to see slow clock toggle a few times
        #1500 $finish;
    end
endmodule
