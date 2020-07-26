# doubled.rb

numbers = [1, 2, 3, 4, 5, 6]

doubled_numbers = numbers.map do |number|
  number * 2
end
p doubled_numbers == [2, 4, 6, 8, 10, 12]
