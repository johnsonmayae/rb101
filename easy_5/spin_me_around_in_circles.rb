def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# Given the method's implementation, will the returned string 
# be the same object as the one passed in as an argument or a 
# different object?

# it will be a different object