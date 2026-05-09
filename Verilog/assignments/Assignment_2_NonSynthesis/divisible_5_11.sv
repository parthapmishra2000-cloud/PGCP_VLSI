module divisible5_11;
  int a=110;
  initial begin
    $display("the number is %s",(a%55==0)?"divisible":"Not divisible");
  end
endmodule