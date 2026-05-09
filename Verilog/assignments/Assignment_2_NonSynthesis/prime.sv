// Code your testbench here
// or browse Examples
module prime;
  int i,a=10,c=0;
  initial begin
    for(i=2;i<a;i++)
      begin
        if(a%i==0)
            c=1;
      end
  $display("the number is %s",(c==0)?"prime":"not prime");
    end
endmodule