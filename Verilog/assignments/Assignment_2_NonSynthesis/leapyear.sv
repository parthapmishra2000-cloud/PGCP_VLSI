// Code your testbench here
// or browse Examples
module leapyear;
  int a=1000;
  initial begin
    if(a%4==0&&a%400==0)
      $display("this is leap year");
      else
        $display("normal year");
  end
endmodule
