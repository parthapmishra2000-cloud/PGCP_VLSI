module swap;
  int a=10, b=20, temp;
  initial begin
    $display("Before swapping");
    $display("a=%0d, b=%0d",a,b);
    temp=a;
    a=b;
    b=temp; 
    $display("After swapping");
    $display("a=%0d, b=%0d",a,b);
  end
endmodule