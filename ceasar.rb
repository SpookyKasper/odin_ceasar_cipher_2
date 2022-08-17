## algo: declare two variables containing respectively lower case letters and upper case letters in order
## make an array with the characters of the passed string
## iterate through that array and check if lower_case or upper_case array contain character, if yes shift it
def ceaser_cipher(string, key)
  lower_case = ("a".."z").to_a
  upper_case = ("A".."Z").to_a
  char_arr = string.split("")
  ciphered_arr = char_arr.map do |value|
    if lower_case.include?(value)
      lower_case[lower_case.index(value) - 26 + key]
    elsif upper_case.include?(value)
      upper_case[upper_case.index(value) - 26 + key]
    else
      value
    end
  end
  ciphered_string = ciphered_arr.join

end

p ceaser_cipher("hellO world", 4)
p ceaser_cipher("What a string!", 5)
