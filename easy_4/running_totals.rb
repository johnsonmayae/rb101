# input: array
# output: array
# rules: the array that is returned must have the same number of
#        elements as the array passed in
#        each element in the returned array has the running total
#        from the original array
# Algorithm:
# - take an array as a parameter
# - iterate over the array
# - add the current element to the preceding element
# - print an array of the sums at each iteration



def running_total(arr)
 sum = 0
 arr.map do |number| 
  sum += number
 end
end
  
p running_total([2, 5, 13]) #== [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []