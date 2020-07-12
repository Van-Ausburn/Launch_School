# BLD_4.rb

def meal
  puts 'Dinner' # This is before the return statement and will be processed
  return 'Breakfast' # An explicit return statement is the last thing that is processed
end

puts meal # This will print Dinner and Breakfast to the terminal, any code above the explicit return
          # will be processed also.
# => Dinner
# => Breakfast
