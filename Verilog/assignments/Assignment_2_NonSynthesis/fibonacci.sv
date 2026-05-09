// Code your testbench here
// or browse Examples
module fibonacci;
  int a=0,b=1,c,i;
  initial begin
    $display("The fibonacci series is");
    for(i=0;i<=10;i++)
      begin
        c=a+b;
        $display(c);
        a=b;
        b=c;
      end
    $write("\n");
    #1 $finish;
  end
endmodule
    
      