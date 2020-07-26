# divide_by_three.rb

numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select do |number|
  (number % 3).zero?
end
p divisible_by_three
