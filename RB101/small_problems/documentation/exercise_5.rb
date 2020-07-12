# exercise_5.rb

a = %w(a b c d e)

#puts a.fetch(7) # index 7 is out of bounds -5...5, there are
puts a.fetch(7, 'beats me') # default value is is referenced, index of 7 is out of bounds -5...5 => beats me
puts a.fetch(7) { |index| index**2 } # Block is executed because index 7 out of bounds - 7^2 => 49

# puts a.fetch(2)
# puts a.fetch(7, 'beats me!')
# puts a.fetch(7) { |index| puts "#{index} is out of bounds!" }

# Tries to return the element at position index, but throws an IndexError
# exception if the referenced index lies outside of the array bounds.  This
# error can be prevented by supplying a second argument, which will act as a
# default value.

# Alternatively, if a block is given it will only be executed when an
# invalid index is referenced.
# Negative values of index count from the end of the array.
