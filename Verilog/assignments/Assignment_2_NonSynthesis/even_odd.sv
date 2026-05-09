module even_odd;
  int a=2;
  initial begin
    if(a%3==0)
      $display("Even number");
    else
      $display("Odd numer");
  end
endmodule