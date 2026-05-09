// Code your testbench here
// or browse Examples
module squaring;
  int a=10,i,square;
  initial begin
    for(i=1;i<=a;i++)
      begin
        square=i*i;
        $display("the square is %0d",square);
      end
  end
endmodule