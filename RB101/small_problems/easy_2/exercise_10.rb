# exercise_10.rb

# Mutation
# What will the following code print,
# and why? Don't run the code until
# you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# LV array1 is assign the value %w(Moe Larry Curly Shemp
# Harpo Chico Groucho Zeppo)
# LV array2 is assigned to an empty array
# each value of array1 is appended to array2, array1 remains the same
# each value of array1 is iterated and the String() method upcase!
# applied upon condition
# if String value starts with "C" or 'S'. array1 =  %w(Moe Larry CURLY
# SHEMP Harpo CHICO Groucho Zeppo)

# Kernel() puts() prints =>

# "Moe"
# "Larry"
# "CURLY"
# "SHEMP"
# "Harpo"
# "CHICO"
# "Groucho"
# "Zeppo"
