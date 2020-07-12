# exercise_4.rb

# Build a program that displays when the user will
# retire and how many years she has to work till
# retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# 1)  Ask user for user input for age
# 2)  store it in local variable age
# 3)  Ask user for age of retirement.
# 4)  Store it in local variable age_of_retire
# 5)

puts "What is your age?:"
age = gets.chomp.to_i

puts "At what age you would like to retire?"
age_of_retire = gets.chomp.to_i

years_working_left = age_of_retire - age

current_year = Time.new.year

retire = Time.new.year + years_working_left

puts "It's #{current_year}.  You will retire in #{retire}."

puts "You have only #{years_working_left} to go!"




