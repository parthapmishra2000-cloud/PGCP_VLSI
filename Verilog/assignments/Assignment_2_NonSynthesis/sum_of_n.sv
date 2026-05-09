// Code your testbench here
// or browse Examples
module sum_of_n;
  int a=10,b=0,i;
  initial begin 
    for(i=1;i<=a;i++)
     begin
        b=b+i;

        end
           $display("sum of natural number is %0d",b);
    end
   endmodule
      