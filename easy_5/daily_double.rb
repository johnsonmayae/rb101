def crunch(string)
  new_string = []
  
  string.each_char do |char|
    new_string << char unless new_string.last == char
  end
  new_string.join.to_s
end

puts crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
puts crunch('4444abcabccba') #== '4abcabcba'
puts crunch('ggggggggggggggg') #== 'g'
puts crunch('a') #== 'a'
puts crunch('') #== ''