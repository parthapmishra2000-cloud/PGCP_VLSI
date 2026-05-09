module vowel_check;
  reg [7:0] char = "v"; // Change this to test different letters
  int is_vowel = 0;

  initial begin
    case (char)
      "a", "e", "i", "o", "u",
      "A", "E", "I", "O", "U": is_vowel = 1;
      default:                 is_vowel = 0;
    endcase

    // The Print: Uses %c for the character and %s for the result string
    $display("The character '%c' is %s", char, (is_vowel == 1) ? "a Vowel" : "a Consonant");
  end
endmodule
