module print1_10;
  int i;
  initial begin
    for(i=1;i<=10;i++)
      $write("%0d\t",i);
    $write("\n");
    for(i=10;i>=1;i--)
      $write("%0d\t",i);
    $write("\n");
    #1 $finish;
  end
endmodule
