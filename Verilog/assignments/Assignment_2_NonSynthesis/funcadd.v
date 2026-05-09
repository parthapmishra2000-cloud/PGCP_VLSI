module MathFunctions;

   
    function [3:0] add;
        input [3:0] a, b;
        begin
            add = a + b;
        end
    endfunction


    function [3:0] sub;
        input [3:0] a, b;
        begin
            sub = a - b;
        end
    endfunction

    function [7:0] multiply;
        input [3:0] a, b;
        begin
            multiply = a * b;
        end
    endfunction


    function is_even;
        input [3:0] val;
        begin
            is_even = (val % 2 == 0);
        end
    endfunction


    function [3:0] find_max;
        input [3:0] a, b;
        begin
            find_max = (a > b) ? a : b;
        end
    endfunction
    
    function [15:0] fibonacci;
    input [7:0] start_a;
    input [7:0] start_b;
    reg [15:0] temp_a;
    reg [15:0] temp_b;
    reg [15:0] current_sum;
    integer i;
    
    begin
        temp_a = start_a;
        temp_b = start_b;
        
        for (i = 0; i < 10; i = i + 1) begin
            current_sum = temp_a + temp_b;
            temp_a = temp_b;
            temp_b = current_sum;
            $display("%0d\t",temp_b);
        end
        
        fibonacci = current_sum; 
    end
endfunction

function [31:0] factorial;
        input [3:0] a;
        integer i;
        integer temp; 
        begin
            temp = 1; 
            for (i = 1; i <= a; i = i + 1) begin
                temp = temp * i;
            end
            factorial = temp;
        end
endfunction
    initial begin
        $display("Addition (10+5): %d", add(4'd10, 4'd5));
        $display("Subtraction (2-8): %d", sub(4'd2, 4'd8));
        $display("Multiplication (4*3): %d", multiply(4'd4, 4'd3));
        $display("Is 10 even? %b", is_even(4'd10));
        $display("Max of 5 and 9: %d", find_max(4'd5, 4'd9));
        $display("The 10th Fibonacci result is: %d", fibonacci(0, 1));
        $display("The Factorial of 5 is: %d", factorial(5));
    end

endmodule
