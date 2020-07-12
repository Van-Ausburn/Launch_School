# reading_error_messages.rb

def find_first_nonzero_among(numbers)
    numbers.each do |n|
       n
    end
  end

  # Examples

  find_first_nonzero_among(0, 0, 1, 0, 2, 0)  # ArgumentError : too mant arguments sent to method find_first_nonzero_among
  p find_first_nonzero_among(1) # NoMethodError : undefined method #each for Integer
