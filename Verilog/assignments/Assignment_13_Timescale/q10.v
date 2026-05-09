`timescale 1us / 1ns 

module Sub_Module(output reg del);
    initial begin
        del = 0;
        #2 del = 1;
        $display("Sub_Module: Signal high at Time = %0t (Internal)", $time);
    end
endmodule

module Top_Module();
    wire sub_out;
    reg top_out;

    Sub_Module u1(.del(sub_out));

    initial begin
        $timeformat(-9, 2, " ns", 10);
        $monitor("TOP MONITOR | Time: %t | Top_Sig: %b | Sub_Sig: %b", $realtime, top_out, sub_out);
        
        top_out = 0;
        #0.05 top_out = 1;
    end
    real t1, t2;

initial begin
    @(posedge top_out) t1 = $realtime;
    @(posedge sub_out) t2 = $realtime;
    #0.001 $display("The delay between signals is: %f ns", (t2 - t1));
end

    initial begin
        #6 $finish; 
    end
endmodule