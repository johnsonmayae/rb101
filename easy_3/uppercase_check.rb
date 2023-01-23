def uppercase?(string)
  if string == string.upcase 
    puts "true"
  else
    puts "false"
  end
end

uppercase?('t')
uppercase?('T')
uppercase?('Four Score')
uppercase?('FOUR SCORE')
uppercase?('4SCORE!')
uppercase?('')

  