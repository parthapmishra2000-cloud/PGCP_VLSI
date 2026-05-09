module ALU_System (
    input [3:0] A, B,
    input [1:0] op,         
    output [3:0] res,
    output [3:0] status     
);
    wire [4:0] full_res;   
    
   
    assign full_res = (op == 2'b00) ? (A + B) :
                      (op == 2'b01) ? (A - B) :
                      (op == 2'b10) ? {1'b0, (A & B)} : {1'b0, (A | B)};

    assign res = full_res[3:0];

   
    assign status[3] = (res == 4'b0000);                      
    assign status[2] = full_res[4];                           
    assign status[1] = res[3];                                
    assign status[0] = (op[1] == 1'b0) ? ((A[3] == B[3]) && (res[3] != A[3])) : 1'b0; 

endmodule