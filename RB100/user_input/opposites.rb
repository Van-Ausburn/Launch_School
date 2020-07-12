# opposites.rb

num1 = ''
num2 = ''

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  loop do
    print 'Please enter a positive or negative integer: '
    num1 = gets.chomp
    print 'Please enter a positive or negative integer: '
    num2 = gets.chomp
    break if valid_number?(num1) && valid_number?(num2)

    puts 'Invalid input, only non zero integers are allowed!'
  end

  break if (num1.to_i.positive? && num2.to_i.negative?) || (num1.to_i.negative? && num2.to_i.positive?)

  puts 'Sorry. One integer must be positive, one must be negative.'
  puts 'Please start over!'
  next
end

puts "#{num1} + #{num2} = #{num1.to_i + num2.to_i}"