# input: string
# output: new string
# Rules:
# returned string must contain onluy the letter specified
# takes 2 arguments
# Algorithm
# take 2 arguments, string, and specified letter
# iterate over the string
# select the specified letter
# save to an empty string
# repeat until all instances of specified letter found
# break the loop
# print results
# results should be new string containing all instances of
# specified letter

def select_letter(sentence, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size
    current_char = sentence[counter]

    if current_char == character
      selected_chars << current_char
    end

    counter += 1
  end
  
  selected_chars
end