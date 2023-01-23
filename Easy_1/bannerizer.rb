def print_in_box(message)
  horizontal_lines = "+#{'-' * (message.size + 2)}"
  vertical_line = "|#{' ' * message.size + 2)}"

  puts horizontal_lines
  puts vertical_line
  puts "| #{message} |"
  puts vertical_line
  puts horizontal_lines
end