numbers = (1..99)
numbers_array = numbers.to_a

puts numbers_array.select { |i| i.odd? }