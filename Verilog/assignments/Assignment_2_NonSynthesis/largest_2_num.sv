// Code your testbench here
// or browse Examples
module largest_two_num;
  int a=-4,b=6,c=9;
  initial begin
    $display("the largestof 2 numbers is %0d",(a>b)?a:b);
    $display("the largestof 3 numbers is %0d",(a>b)?(a>c)?a:c:(b>c)?b:c);
    $display("the num is %s",(a>0)?"positive":"negative");
  end
endmodule

