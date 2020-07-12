# exercise_3.rb

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Methods are processed from left to right. When
# called, the arguments must be provided in the
# exact order. In other words, the arguments are
# positional.
# The default value does not need to appear first,
# but arguments with defaults must be grouped
# together.

#=> [4, 5, 3, 6]
