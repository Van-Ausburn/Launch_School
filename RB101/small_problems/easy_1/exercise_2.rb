# exercise_2.rb

# Write a method that takes one integer argument,
# which may be positive, negative, or zero. This
# method returns true if the number's absolute
# value is odd. You may assume that the argument
# is a valid integer value.

# problem:
# Write a program that accepts any integer
# as a parameter. The argument is then tested
# as to it being an odd integer. The method
# returns true if it is odd, false if it if
# not.

# input:
#   integer
# output:
#  boolean

def is_odd?(num)
  num % 2 == 1
end

puts is_odd?(-17)
puts is_odd?(2)
puts is_odd?(-10)


# is_odd? method - the question mark is what does the trick here! IT GIVES THE TRUE OR FALSE!
# Nothing else is neccessary!

# I trie several other ways, if else statements, and the != 0. All unneccessary! Brilliant Ruby is!

# Remember! "def method?()" is true or false
