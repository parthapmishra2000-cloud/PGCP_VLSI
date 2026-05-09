module add_test;
int a=10, b=20, add, sub, mul, div,rem;

initial begin
  add = a + b;
  sub=a-b;
  mul=a*b;
  div=b/a;
  rem=b%a;
  $display("Sum = %0d", add);
  $display("Difference = %0d", sub);
  $display("Product = %0d", mul);
  $display("Quotient = %0d", div);
  $display("Remainder = %0d", rem);
end
endmodule