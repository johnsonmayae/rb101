# input: range starting with 1
# output: integer/sum
# rules: must be a multiple of 3 OR 5
#        must add the multiples
#        number passed is integer greater than 1
# Algorithm
# take an integer for end of range
# iterate through the range
# find multiples of 3
# create empty array
# - create method to isolate multiples of 3
# - add to array
# find multiple of 5
# create empty array
# - create method to isolate multiples of 5
# - add to array
# combine the arrays for the multiples of 3 and 5
# remove repeated numbers from array
# sum all multiples of 3 and 5 left in the array
# output the sum of the multiples



def multiple_of_3?(number)
  number % 3 == 0
end

def multiple_of_5?(number)
  number % 5 == 0
end

def multisum(number)
  threes_array = []
  fives_array = []
  multiples_array = []
  (1..number).each do |number|
    if multiple_of_3?(number)
      threes_array << number
    end
    if multiple_of_5?(number)
      fives_array << number
    end
  end

  puts multiples_array = (threes_array + fives_array).uniq.sum
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
    

