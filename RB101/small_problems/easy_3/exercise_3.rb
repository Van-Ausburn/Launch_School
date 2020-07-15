# exercise_3.rb

# Counting the Number of Characters
# Write a program that will ask a user for an 
# input of a word or multiple words and give 
# back the number of characters. Spaces should 
# not be counted as a character.

# input:

# Please write word or multiple words: walk
# output:

# There are 4 characters in "walk".
# input:

# Please write word or multiple words: walk, don't run
# output:

# There are 13 characters in "walk, don't run".

=begin
Input: 
Output: 

Problem: 
  -  Ask user for string input
     Given a string or series of strings
     Iterate through the string or strings
     Count the number of characters in the string or strings
     Spaces can not be counted

Clarifying Questions: 
  - 

Data Structure: 
  -  Array of strings

Algorithm: 
  -  Get input from user, ask for a string or strings
*/ 

//Code:


//Test Cases: 

=end

def prompt(message)
  puts "==> #{message}"
end

prompt("Please write a word or multiple words: ")
string = gets.chomp.to_s
number_characters = string.delete(' ').length
prompt("There are #{number_characters} characters in \"#{string}\".")
