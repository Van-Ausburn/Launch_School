# exercise_1.rb

# Repeat Yourself
# Write a method that takes two arguments,
# a string and a positive integer, and
# prints the string as many times as the
# integer indicates.

# problem
# Write a program that takes two parameters
# A string and an integer
# Prints the string, iteger number of times
#
# input: string, integer
# output: string
# mental model:
# Create method definition repeats(str, num)
# The method will take the string arguments
# and print it to teminal a numer of t.timestamp
# determined by the integer argument.

def repeat(string, num)
  if num < 0
    puts 'The number is not a positive integer'
  else
    puts 'The number is a positive integer.'
  end
  num.times { puts string }
end

repeat('hello', -4)
repeat('Breakfast', 1)
repeat('Time', 1)
repeat("I'm hungry!", 2)
repeat('That was cool!', 3)
