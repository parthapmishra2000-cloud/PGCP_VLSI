module ParityCircuits (
    input [3:0] data_in,      
    output even_parity,      
    output odd_parity        
);

    assign even_parity = ^data_in; 

    assign odd_parity = ~(^data_in);

endmodule