# exercise_10.rb

# Palindromic Numbers
# Write a method that returns true if its
# integer argument is palindromic, false
# otherwise. A palindromic number reads
# the same forwards and backwards.

# def palindromic_number?(number)
#   new_number = number.to_s.reverse
#   new_number.to_i == number
# end

def palindrome?(string)
  string.reverse == string
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
