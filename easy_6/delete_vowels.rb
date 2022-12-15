# Write a method that takes an array of strings, and returns an array
# of the same string values, except with the vowels (a, e, i, o, u)
# removed.

VOWELS = %w(a e i o u A E I O U)

def remove_vowels(array)
  array.each do |element|
    element.each_char do |char|
      element.delete!(char) if VOWELS.include?(char)
    end
  end
end
    

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
#remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
#remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']
