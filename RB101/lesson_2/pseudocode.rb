# pseudocode.rb

# 1) a method that returns the sum of two integers
# 2) a method that takes an array of strings, and returns a string that
#    is all those strings concatenated together
# 3) a method that takes an array of integers, and returns a new array
#    with every other element
# No need to code here, just practice writing logic out in English.

# Exercise_1
# 1) Given two arguments, integers are passed in to the method sum
# 2) assign integer arguments to local variables num_1 and num_2
# 3) perform integer addition on local variables num1 and num_2, num_1 + num_2
# 4) return sum to user
# 5) test method p sum(2, 2) == 4

# def sum(num_1, num_2)
#   num_1 + num_2
# end

# p sum(2, 4) == 6
# p sum(5, 12) == 17

# Exercise_2
# 1) an array of strings as an argument are passed into the method
#    concat_string(string)
# 2) the argument array is assigned to local variable string_array
# 3) concatenate the string_array elements with Array#join method
#    with a space as a seperator
# 4) test method

# def concat_string(string_array)
#   string_array.join(' ')
# end

#  p concat_string(['hello', 'from', 'array']) == "hello from array"

# Exercise_3
# 1) pass an array of integers into a method as arguments
# 2) instantiate local variable for iteger array argument int_array
# 3) create count to iterate index
# 4) create local variable to store new array
# 5) while index count less than int_array.size
# 6) int_array[0] of pushed to odds[]
# 7) index count goes up by 2
# 8) repeat steps 5 through 7 until index count is the same as int_array.size
# 9) return odds array
# 10) test method

# def every_other(int_array)
#   index = 0
#   odds = []
#   while index < int_array.size
#     odds << int_array[index]
#     index += 2
#   end
#   odds
# end

# p every_other([2, 3, 4, 5, 6, 7, 8, 9, 10]) == [2, 4, 6, 8, 10]
# p every_other([3, 4])
