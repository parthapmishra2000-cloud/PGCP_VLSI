module Comparators (
    input [1:0] A2, B2,      
    input [3:0] A4, B4,      
    output A_gt_B2, A_lt_B2, A_eq_B2, A_gt_B4, A_lt_B4, A_eq_B4  
);

    assign A_gt_B2 = (A2 > B2);
    assign A_lt_B2 = (A2 < B2);
    assign A_eq_B2 = (A2 == B2);

    assign A_gt_B4 = (A4 > B4);
    assign A_lt_B4 = (A4 < B4);
    assign A_eq_B4 = (A4 == B4);

endmodule