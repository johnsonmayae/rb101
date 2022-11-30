# Question 1
# undefined method error

# Question 2
# prints "hi there"

# Question 3
# A) prints "one is: one, two is: two, three is: three"
# B) prints "one is: one, two is: two, three is: three"
# C) prints "one is: two, two is: three, three is: one"

# Question 4
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
  
end

