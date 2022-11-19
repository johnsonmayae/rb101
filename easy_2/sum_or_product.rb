puts ">> Please enter an integer greater than 0:"
chosen_integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
user_choice = gets.chomp

sum = 0
product = 0

sum_total = chosen_integer.downto(1).reduce(:+)
product_total = chosen_integer.downto(1).reduce(1, :*)

if user_choice == 's'
  puts "The sum of the integers between 1 and #{chosen_integer} is #{sum_total}."
else
  puts "The product of the integers between 1 and #{chosen_integer} is #{product_total}."
end

