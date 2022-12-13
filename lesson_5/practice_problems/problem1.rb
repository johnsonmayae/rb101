# How would you order this array of number strings 
# by descending numeric value?

arr = ['10', '11', '9', '7', '8']
sorted_array = []
arr.map do |string|
  sorted_array << string.to_i
end

sorted_array.sort { |a, b| b <=> a }