# tip_calc.rb

# Create a simple tip calculator. The program should prompt for
# a bill amount and a tip rate. The program must compute the
# tip and then display both the tip and the total amount of the bill.

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f
tip_percentage /= 100

total_tip = tip_percentage * bill

total = total_tip + bill

puts "The tip is $#{total_tip}."

puts "The total is $#{total}."

