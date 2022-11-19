def valid_number?(num)
  num.to_i() != 0 || num < 0
end

room_length = 0
room_width = 0

loop do
  puts "Enter the length of the room in meters:"
  room_length = gets.chomp.to_i

  if valid_number?(room_length)
    break
  else
    puts"Please enter a valid number:"
  end
end 

loop do
  puts "Enter the width of the room in meters:"
  room_width = gets.chomp.to_i

  if valid_number?(room_width)
    break
  else
    puts "Please enter a valid number:"
  end
end

square_meters = room_length * room_width
square_feet = square_meters * 10.7639

puts "The area of the room is #{square_meters.round(2)} square meters (#{square_feet.round(2)} square feet)."