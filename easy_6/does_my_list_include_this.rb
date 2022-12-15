# Write a method named include? that takes an Array and a search value
# as arguments. This method should return true if the search value 
# is in the array, false if it is not. You may not use the Array#include?
# method in your solution.

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end

p include?([1,2,3,4,5], 6)