module ShiftRotateCircuits (
    input [3:0] data_in,    
    input [1:0] shamt,      
    output [3:0] left_shift,
    output [3:0] right_shift,
    output [3:0] left_rotate,
    output [3:0] right_rotate
);

    assign left_shift = data_in << shamt;

    assign right_shift = data_in >> shamt;

    assign left_rotate = (data_in << shamt) | (data_in >> (4 - shamt));

    assign right_rotate = (data_in >> shamt) | (data_in << (4 - shamt));

endmodule