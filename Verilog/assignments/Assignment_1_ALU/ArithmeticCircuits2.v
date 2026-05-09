module Arithmetic4Bit (
    input [3:0] A, B,      
    input cin,             
    input bin,             
    output [3:0] sum,      
    output cout,          
    output [3:0] diff,     
    output bout            
);
  
    assign {cout, sum} = A + B + cin; 
    assign {bout, diff} = A - B - bin; 

endmodule