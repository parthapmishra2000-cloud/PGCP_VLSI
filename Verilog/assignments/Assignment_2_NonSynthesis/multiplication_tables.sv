// Code your testbench here
// or browse Examples
module multiplication;
  int a=3,i,b=1;
  initial begin
    for(i=1;i<=10;i++)
      begin
      b=a*i;
        $display("%0d X %0d is %0d",a,i,b);
      end
  end
endmodule
    
    
      