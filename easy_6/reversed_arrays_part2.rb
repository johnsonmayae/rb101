# Write a method that takes an Array, and returns a new Array with 
# the elements of the original list in reverse order. Do not modify
# the original list.

def reverse(array)
  new_list = []
  array.reverse_each { |element| new_list << element }
  new_list
end

