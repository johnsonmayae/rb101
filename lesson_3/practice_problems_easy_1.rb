# Question 1

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# prints 1
#        2
#        2
#        3


# Question 2
# ! and ? are typically part of method names

=begin 1. != is a comparison operator and means "not equal" its used to signify truthyness
       2. this means the opposite of the object's boolean equivalent
       3. this means it is destructive or mutates the caller
       4. means you are about to compare something like in a ternary operator
       5. normally means you are asking a question and evaluating an argument against the method
       6. turns whatever object that follows into its boolean equivalent
=end

# Question 3

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

# Question 4

numbers.delete_at(1) # deletes the number after 1
numbers.delete(1) # deletes 1

# Question 5

(10..100).cover?(40)

# Question 6

famous_words = "seven years ago..."

"Four score and " + famous_words

famous_words.prepend("Four score and ")


# Question 7

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
flinstones.flatten!

# Question 8

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flinstones.assoc("Barney") #returns a two element array w Barney and his number