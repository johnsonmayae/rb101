current_year = Time.now.year

puts "What is your age?"
current_age = gets.chomp

puts "At what age would you like to retire?"
retirement_age = gets.chomp

retirement_year = current_year + (retirement_age.to_i - current_age.to_i)

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{retirement_year - current_year} years of work to go!"