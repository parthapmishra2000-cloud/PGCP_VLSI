module pri_enc(output reg [2:0] y, input wire[7:0]a);

always@(*) begin
casez (a)
 8'bzzzzzzz1: y = 3'b000 ;
 8'bzzzzzz10: y = 3'b001 ;
 8'bzzzzz100: y = 3'b010 ;
 8'bzzzz1000: y = 3'b011 ;
 8'bzzz10000: y = 3'b100 ;
 8'bzz100000: y = 3'b101 ;
 8'bz1000000: y = 3'b110 ;
 8'b10000000: y = 3'b111 ;
    default: 
              y = 3'b0;
endcase
end
endmodule

module tb_pri_enc();

    reg  [7:0] a_in;
    wire [2:0] y_out;

    pri_enc uut (
        .y(y_out),
        .a(a_in)
    );


    task check_result;
        begin
            #1; 
            $display("Input: %b | Output: %d", a_in, y_out);
        end
    endtask

    initial begin

        a_in = 8'b0000_0001; check_result();

        a_in = 8'b0000_1000; check_result();

  
        a_in = 8'b0010_0010; check_result();


        a_in = 8'b1000_0000; check_result();

        a_in = 8'b0000_0000; check_result();

        $finish;
    end

endmodule