
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
