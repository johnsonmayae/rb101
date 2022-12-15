# Write a method that takes an Array as an argument, and reverses 
# its elements in place; that is, mutate the Array passed into this
# method. The return value should be the same Array object.

def reverse!(array)
  new_list = []
  loop do 
    new_list << array.pop
    break if array.size == 0
  end
  list = new_list
end

