module print_odd_even;
  int i;
  initial begin
  for(i=0;i<=10;i++)
    begin
      if(i%2==0)
        $display("Even %0d",i);
      else
        $display("Odd %0d", i);
    end
  end
endmodule
      