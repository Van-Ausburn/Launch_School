# printLS2.rb
loop do
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
  lines = gets.chomp
  break if lines.downcase == 'q'
  puts ">> That's not enough lines." if lines.to_i < 3
  lines.to_i.times {puts 'Launch School is the best!'} if lines.to_i >= 3
end