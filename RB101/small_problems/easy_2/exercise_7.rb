# exercise_7.rb

# Even Numbers
# Print the even numbers from 1 to 99, inclusive.
# All numbers should be printed on separate lines.

# (1..99).select { |num| p num if num.even?}

num = 2
while num <= 99
  puts num
  num += 2
end
