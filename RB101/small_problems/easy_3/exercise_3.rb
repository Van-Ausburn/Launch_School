# exercise_3.rb

# Write a program that prompts the user for
# two positive integers, and then prints the
# results of the following operations on those
# two numbers: addition, subtraction, product,
#  quotient, remainder, and power. Do not worry
#  about validating the input.

# Example

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

# problem: Prompt user for two positive integers, and print the results of
# addition, subtraction, multiplication, division, modulo and exponential
# validation unneccessary.

# examples:

# input: user input Integer

# output: string, integers

# algo: Prompt user for 2 positive integer inputs
# store in local variable
# perform operationd +, -, *, /, %, and ** on the set of integers
# put an interpolated string of answers to terminal


puts "Enter the first non-zero number: "

number_1 = gets.chomp.to_i

puts "Enter the second non-zero number: "

number_2 = gets.chomp.to_i

puts "==> #{number_1} + #{number_2} =  #{number_1 + number_2}"
puts "==> #{number_1} - #{number_2} =  #{number_1 - number_2}"
puts "==> #{number_1} * #{number_2} =  #{number_1 * number_2}"
puts "==> #{number_1} / #{number_2} =  #{number_1 / number_2}"
puts "==> #{number_1} % #{number_2} =  #{number_1 % number_2}"
puts "==> #{number_1} ** #{number_2} =  #{number_1 ** number_2}"
