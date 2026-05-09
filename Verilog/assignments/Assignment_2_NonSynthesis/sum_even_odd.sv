// Code your testbench here
// or browse Examples
module sum_of_odd;
  int a=10,sumo=0,sume=0,i;
  initial begin
    for(i=1;i<=a;i=i+2)
      begin
        sumo=sumo+i;
        $display("sum of odd number is %0d",sumo);
      end
    for(i=0;i<=a;i=i+2)
      begin
        sume=sume+i;
        $display("sum of even number is %0d",sume);
      end
  end
endmodule
  