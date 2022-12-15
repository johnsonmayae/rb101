# Write a method that takes an Array as an argument, and returns two
# Arrays (as a pair of nested Arrays) that contain the first half 
# and second half of the original Array, respectively. If the 
# original array contains an odd number of elements, the middle 
# element should be placed in the first half Array.

def halvsies(arr)
  if arr.length.even?
    cut_off = arr.length / 2
  else
    cut_off = arr.length / 2 + 1
  end
  a = arr.slice!(0, cut_off)
  [a, arr]
end