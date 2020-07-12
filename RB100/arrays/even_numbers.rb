# even_numbers.rb



# numbers = [5, 2, 9, 6, 3, 1, 8]

# even_numbers = numbers.map {|n|  n * 2 }

# p even_numbers # expected output: [2, 6, 8]

# numbers = [5, 2, 9, 6, 3, 1, 8]
# even_numbers = numbers.map do |n| 
#   n.even?  
# end
#p even_numbers # expected output: [2, 6, 8]
even_numbers = numbers.select do |n|
  n.even?
end
p even_numbers #=> [2, 6, 8]


