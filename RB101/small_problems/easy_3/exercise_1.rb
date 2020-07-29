# exercise_1.rb

# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not the
# 6th number appears amongst the first 5 numbers.

array_of_int = []

def prompt(message)
  puts("=> #{message}")
end

prompt("Enter the 1st number:")
number1 = gets.chomp.to_i
array_of_int << number1

prompt("Enter the 2nd number:")
number2 = gets.chomp.to_i
array_of_int << number2

prompt("Enter the 3rd number:")
number3 = gets.chomp.to_i
array_of_int << number3

prompt("Enter the 4th number:")
number4 = gets.chomp.to_i
array_of_int << number4

prompt("Enter the 5th number:")
number5 = gets.chomp.to_i
array_of_int << number5

prompt("Enter the 6th number:")
number6 = gets.chomp.to_i


if array_of_int.include?(number6)
  prompt("The number #{number6} appears in #{array_of_int}.")
else
 prompt("The number #{number6} does not appear in #{array_of_int}!")
end
