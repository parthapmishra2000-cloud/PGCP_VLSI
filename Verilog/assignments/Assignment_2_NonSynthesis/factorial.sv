// Code your testbench here
// or browse Examples
module fact;
int a=5,i, factorial=1;
  initial begin
    for(i=1;i<=a;i++)
      factorial=factorial*i;
    $display(" the factoial of %0d is %0d",a,factorial);
  end
  endmodule
      