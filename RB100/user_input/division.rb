# division.rb

numerator   = ""
denominator = ""

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
loop do
  p 'Please enter the numerator: '
  numerator = gets.chomp
  break if valid_number?(numerator)

  print "Invalid input. Only integers are allowed: "
end
loop do
  p 'Please enter the denominator: '
  denominator = gets.chomp
  if !valid_number?(denominator)
    print 'Invalid input. Only integers are allowed.'
  elsif denominator.to_i.zero?
    p 'Invalid input. A denominator of 0 is not allowed!'
  else
    break
  end
end
puts "#{numerator} / #{denominator} is #{numerator.to_i / denominator.to_f}"

# LS Answer

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# numerator = nil
# loop do
#   puts '>> Please enter the numerator:'
#   numerator = gets.chomp

#   break if valid_number?(numerator)
#   puts '>> Invalid input. Only integers are allowed.'
# end

# denominator = nil
# loop do
#   puts '>> Please enter the denominator:'
#   denominator = gets.chomp

#   if denominator == '0'
#     puts '>> Invalid input. A denominator of 0 is not allowed.'
#   else
#     break if valid_number?(denominator)
#     puts '>> Invalid input. Only integers are allowed.'
#   end
# end

# result = numerator.to_i / denominator.to_i
# puts "#{numerator} / #{denominator} is #{result}"
