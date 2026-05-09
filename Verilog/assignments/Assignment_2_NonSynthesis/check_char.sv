module check_char;
  reg [7:0] char = "S"; 

  initial begin
    if ((char >= "a" && char <= "z") || (char >= "A" && char <= "Z"))
      $display("Input '%c' is an Alphabet", char);
    else if (char >= "0" && char <= "9")
      $display("Input '%c' is a Number", char);
    else
      $display("Input '%c' is a Special Character", char);
  end
endmodule
