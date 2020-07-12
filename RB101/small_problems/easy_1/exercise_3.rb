# exercise_3.rb

# Write a method that takes one argument,
# a positive integer, and returns a list of
# the digits in the number.

# problem:
#  Write a program that takes 1 parameter
#  a positive integer. Return a list of
#  the digits in an array.

# input:
#   integer argument

# output:
#   array of integers

# examples:
#   digit_list(7) == [7]
#   digit_list(375290) == [3, 7, 5, 2, 9, 0]
#   digit_list(444) == [4, 4, 4]
#   digit_list(12345) == [1, 2, 3, 4, 5]

# pseudocode
#  1 Create method definition digit_list
#  2 Pass one parameter, an integer to digit_list method
#  3 While integer positive
#  4 Convert integer to string for iteration
#  5 Iterat string digits and store in array
#  6 print array to terminal

# def digit_list(num)
#   arr = num.to_s.scan(/./)
#   arr.map(&:to_i)
#  end

# def digit_list(num)
#   arr = []
#   num.to_s.each_char do |char|
#     arr << char.to_i
#   end
#   arr
# end

# def digit_list(number)
#   number.to_s.chars.map(&:to_i)
# end

def digit_list(number)
  number.digits.reverse if number > 0
end

# def digit_list(number)
#   digits = []
#   loop do
#     number, remainder = number.divmod(10)
#     digits.unshift(remainder)
#     break unless number > 0 # if number == 0 andthe loop is done!
#   end     # Even what I have, a negative number breaks the loop:
#   digits  # brute force does not work like this.
# end

p digit_list(-7) == [-7]
p digit_list(375290) == [3, 7, 5, 2, 9, 0]
p digit_list(444) == [4, 4, 4]
p digit_list(12_345) == [1, 2, 3, 4, 5]
