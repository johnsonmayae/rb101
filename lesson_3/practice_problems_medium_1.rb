# Question 1

The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# Question 2

puts "the value of 40 + 2 is " + (40 + 2)
puts "the value of 40 + 2 is #{40 + 2}"

# Question 3

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# Question 4

# the << concatenates the element and modifies the buffer. the +
# creates a new object and so the buffer itself is unchanged in
# the second method

# Question 5

def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# Question 6

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# outputs 34

# Question 7

# yes. he did not create a new hash for the result

# Question 8

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
# paper

# Question 9

# "no"