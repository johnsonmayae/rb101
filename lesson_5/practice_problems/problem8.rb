# Using the each method, write some code to output all of the 
# vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWELS = %w(a e i o u)

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if VOWELS.include?(char)
    end
  end
end


