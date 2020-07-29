# exercise_3.rb

# Counting the Number of Characters
# Write a program that will ask a user for an
# input of a word or multiple words and give
# back the number of characters. Spaces should
# not be counted as a character.

def prompt(message)
  puts "==> #{message}"
end

prompt("Please write a word or multiple words: ")
string = gets.chomp.to_s
number_characters = string.delete(' ').length
prompt("There are #{number_characters} characters in \"#{string}\".")
