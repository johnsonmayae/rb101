puts "Please write word or multiple words:"
answer = gets.chomp

puts "There are #{answer.delete(' ').length} characters in '#{answer}'."