# counting_sheep1.rb

def count_sheep
  5.times do |num|
    puts num
  end
end

5.times do |num|
  puts num
end

puts count_sheep

=begin
0
1
2
3
4
0
0
1
2
3
4
5
=end

#times in the Ruby docs, you'll know that after iterating 5 times,
# the block returns the initial integer. Which, in this case, is 5.

# The explanation below doesn't explain the behavior I am getting!

# We're using Integer#times within the count_sheep method to count from 0 to 4
# (#times starts at 0). Therefore, it's no surprise that the output includes 0
# through 4. What may be surprising, however, is the fact that the output
# includes 5. Where did that 5 come from? If you study

