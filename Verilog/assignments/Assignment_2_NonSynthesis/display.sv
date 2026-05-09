module displayval;
  int a=10, b=20;
  initial begin
    $display(10);
    $display("A = %0d",a);
    $display("B = %0d",b);
    $display("Hello world");
    $display("How are you?");
    $display("I am fine");
    $write("The value of a is %0d", a); 
    $write("  The value of b is %0d", b);
    #1 $finish;
  end
endmodule