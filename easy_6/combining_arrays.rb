# Write a method that takes two Arrays as arguments, and returns an
# Array that contains all of the values from the argument Arrays. 
# There should be no duplication of values in the returned Array, 
# even if there are duplicates in the original Arrays.

def merge(arr1, arr2)
  arr2.each do |element|
    arr1 << arr2 unless arr1.include?(element)
  end
  arr1.flatten.uniq
end

puts merge([1, 3, 5], [3, 6, 9])