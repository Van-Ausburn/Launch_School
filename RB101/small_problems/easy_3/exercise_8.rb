# exercise_8.rb

# Palindromic Strings (Part 1)

=begin

Problem:
  - # Write a method that returns true if the string
      passed as an argument is a palindrome, false
      otherwise. A palindrome reads the same forward
      and backward. For this exercise, case matters
      as does punctuation and spaces.
Input:
  - String
Output:
  - boolean
Problem Domain:
  - conditional
Data Structure:
  - String
Pseudocode:
  - Given a string argument
  - set conditional if string equal string reversed
  - return true statement

Algorithm:
  -
*/

//Test Cases:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

//Code:
=end

def palindrome?(string)
  string.reverse == string
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# Henrys-iMac:easy_3 henry$ rubocop exercise_8.rb
# For more information: https://docs.rubocop.org/rubocop/versioning.html
# Inspecting 1 file
# .

# 1 file inspected, no offenses detected
