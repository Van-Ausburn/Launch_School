# exercise_2.rb

# Write a program that prompts the user for
# two positive integers, and then prints the
# results of the following operations on those
# two numbers: addition, subtraction, product,
#  quotient, remainder, and power. Do not worry
#  about validating the input.

def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first non-zero number: ")

number1 = gets.chomp.to_i

prompt("Enter the second non-zero number: ")

number2 = gets.chomp.to_i

prompt("#{number1} + #{number2} =  #{number1 + number2}")
prompt("#{number1} - #{number2} =  #{number1 - number2}")
prompt("#{number1} * #{number2} =  #{number1 * number2}")
prompt("#{number1} / #{number2} =  #{number1 / number2}")
prompt("#{number1} % #{number2} =  #{number1 % number2}")
prompt("#{number1} ** #{number2} =  #{number1**number2}")
