`timescale 1ns / 1ps

module smallest_3;
    integer a = 10;
    integer b = 2;
    integer c = 7;
    integer smallest;

    initial begin
        if (a <= b && a <= c) begin
            smallest = a;
        end else if (b <= a && b <= c) begin
            smallest = b;
        end else begin
            smallest = c;
        end

        $display("--------------------------");
        $display("Numbers: a=%0d, b=%0d, c=%0d", a, b, c);
        $display("Smallest is : %0d", smallest);
        $display("--------------------------");
        $finish;
    end
endmodule
