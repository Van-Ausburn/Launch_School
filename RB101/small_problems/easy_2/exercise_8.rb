# exercise_8.rb

# Write a program that asks the user to enter an integer
# greater than 0, then asks if the user wants to determine
# the sum or product of all numbers between 1 and the
# entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.

# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.
# Show Solution & Discussion

# 1) Ask user for input of an Integer greater than 0
# 2) store the Integer in local variable number
# 3) Ask the user if they want to see the sum or product
#    of all integers less than number.
# 4) if sum, add number + (number - 1).
# 5) if product number * (number - 1)

def recursive_product(num)
  return 1 if num <= 1

  num * recursive_product(num - 1)
end

def recursive_sum(num)
  return 1 if num <= 1

  num + recursive_sum(num - 1)
end

print "Please enter an integer greater than 0: "

number = gets.chomp.to_i

print "Enter 'S' to compute the sum, 'P' to compute the product: "

answer = gets.chomp.downcase

if answer == 's'
  p recursive_sum(number)
elsif answer == 'p'
  p recursive_product(number)
end


