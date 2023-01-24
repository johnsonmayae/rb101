def staggered_case(string)
  new_string = ''
  letter_array = string.chars
  letter_array.each_with_index do |char, index|
    if index.even?
      new_string << char.upcase
    else
      new_string << char.downcase
    end
  end
  p new_string
end

staggered_case('I Love Launch School!')
staggered_case('ALL_CAPS')
staggered_case('ignore 77 the 444 numbers')