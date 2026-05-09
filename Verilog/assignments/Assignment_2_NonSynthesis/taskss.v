module Taskss;

    task display_msg;
        begin
            $display("--- System Alert: Task execution started ---");
        end
    endtask

    task arithmetic;
        input [7:0] x, y;
        output [15:0] sum, prod;
        begin
            sum = x + y;
            prod = x * y;
        end
    endtask

    task generate_table;
        input [7:0] num;
        integer i;
        begin
            $display("Table for %0d:", num);
            for (i = 1; i <= 10; i = i + 1) begin
                $display("%0d x %0d = %0d", num, i, num * i);
            end
        end
    endtask

    task bitwise_logic;
        input [3:0] data_in;
        output [3:0] data_out;
        begin
            data_out = ~data_in; 
        end
    endtask


    reg [15:0] s, p;
    reg [3:0] logic_result;

    initial begin

        display_msg();

        arithmetic(8, 4, s, p);
        $display("Arithmetic -> Sum: %0d, Prod: %0d", s, p);

        generate_table(5);

        bitwise_logic(4'b1010, logic_result);
        $display("Bitwise Invert of 1010: %b", logic_result);
    end

endmodule