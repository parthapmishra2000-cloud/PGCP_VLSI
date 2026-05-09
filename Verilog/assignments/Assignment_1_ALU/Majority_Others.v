module MajorityAndOthers (
    input [2:0] maj_in,      
    input [3:0] A, B,        
    output majority_out,     
    output xor_comp_out,     
    output and_comp_out    
);

    assign majority_out = (maj_in[2] & maj_in[1]) | 
                          (maj_in[1] & maj_in[0]) | 
                          (maj_in[2] & maj_in[0]); 

    assign xor_comp_out = ~(|(A ^ B)); 

    assign and_comp_out = (A & B) == A && (A & B) == B; 

endmodule