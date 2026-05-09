module ArithmeticCircuits (
    input a, b, cin,     
    input x, y, bin,      
    output sum_h, car_h,  
    output sum_f, car_f,  
    output diff_h, bow_h, 
    output diff_f, bow_f  
);

    // HA
    assign sum_h = a ^ b;            
    assign car_h = a & b;            

    // FA
    assign sum_f = a ^ b ^ cin;     
    assign car_f = (a & b) | (cin & (a ^ b)); 

    // HS
    assign diff_h = x ^ y;           
    assign bow_h = (~x) & y;         

    // FS
    assign diff_f = x ^ y ^ bin;     
    assign bow_f = ((~x) & y) | (bin & ~(x ^ y)); 
endmodule