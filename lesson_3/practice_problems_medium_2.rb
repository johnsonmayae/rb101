# Question 1

a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id
# a and c have the same id, b has a different id

# Question 2

a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id
# all three have the same id because integers are immutable

# Question 3
# my_string is still equal to pumpkin because the method did not mutate
# the original string, it created a new string. The array was actually 
# mutated because the result was not saved to a new object

# Question 4
# this is going to be the opposite of what happened in Q3

# Question 5
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Question 6
def color_valid(color)
  color == "blue" || color == "green"
end