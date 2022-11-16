# methods to be defined

def float?(number)
  number.to_f.to_s == number
end

def integer?(number)
  number.to_i.to_s == number
end

def valid_number?(number)
  integer?(number) || float?(number) 
end

# Welcome message

puts "=> Welcome to the monthly payment calculator!"

loop do # Main loop

  loan_amount = ''
  loop do
      puts "=> Please enter your total loan amount:"
      loan_amount = gets.chomp
    if valid_number?(loan_amount)
      break
    else
      puts "=> Please enter a valid number:"
    end
  end


  apr = ''
  loop do 
    puts "=> Please enter your annual percentage rate (APR) as a percentage, for example, use '5' for 5 percent or '5.5' for 5.5 percent:"
    apr = gets.chomp
    if valid_number?(apr)
      break
    else
      puts "=> Please enter a valid number:"
    end
  end


  duration = ''
  loop do
    puts "=> Please enter your loan duration in months, for example, 5 years should be 60 months:"
    duration = gets.chomp
    if valid_number?(duration)
      break
    else
      puts "=> Please enter a valid number:"
    end
  end


  loan_amount = loan_amount.to_f
  apr = apr.to_f
  duration = duration.to_i

  monthly_interest = (apr / 100) / 12
  monthly_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-duration)))

  estimate = monthly_payment.round(2)
  
  puts "=> Your monthly payment is #{estimate}"

  puts "=> Do you want to perform another calculation?"
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

puts "Thank you for using the monthly payment calculator. Goodbye!"