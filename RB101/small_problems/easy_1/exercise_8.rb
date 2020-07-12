# exercise_8.rb

# Array Average
# Write a method that takes one argument,
# an array containing integers, and returns
# the average of all numbers in the array.
# The array will never be empty and the
# numbers will always be positive integers.
# Your result should also be an integer.



# def average(numbers)
#   average = 0

#   numbers.each do |val|
#     average += val
#   end
#   average / numbers.length
# end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

def average(numbers)
  sum = numbers.reduce(:-)
  sum / numbers.count
end


