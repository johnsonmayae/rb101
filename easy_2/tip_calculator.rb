puts "What is the bill?"
bill_amount = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f / 100

tip_total = (tip_percentage * bill_amount).round(2)
bill_total = (bill_amount + tip_total).round(2)

puts "The tip is #{sprintf("%0.2f", tip_total)}"
puts "The bill total is #{sprintf("%0.2f", bill_total)}"