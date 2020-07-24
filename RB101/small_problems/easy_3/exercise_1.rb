# exercise_1.rb

# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not the
# 6th number appears amongst the first 5 numbers.

# Examples:

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

array_of_int = []

puts "==> Enter the 1st number:"
number1 = gets.chomp.to_i
array_of_int << number1

puts "==> Enter the 2nd number:"
number2 = gets.chomp.to_i
array_of_int << number2

puts "==> Enter the 3rd number:"
number3 = gets.chomp.to_i
array_of_int << number3

puts "==> Enter the 4th number:"
number4 = gets.chomp.to_i
array_of_int << number4

puts "==> Enter the 5th number:"
number5 = gets.chomp.to_i
array_of_int << number5

puts "==> Enter the 6th number:"
number6 = gets.chomp.to_i


if array_of_int.include?(number6)
  puts "The number #{number6} appears in #{array_of_int}."
else
  puts "The number #{number6} does not appear in #{array_of_int}!"
end
