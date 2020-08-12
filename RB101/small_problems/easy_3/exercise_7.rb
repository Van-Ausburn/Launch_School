# exercise_7.rb

=begin
Odd Lists
Write a method that returns an Array that
contains every other element of an Array
that is passed in as an argument. The
values in the returned list should be
those values that are in the 1st, 3rd, 5th,
and so on elements of the argument Array.
Problem:
  - given an array of integers
  - iterate integers and return 1st, 3rd, 5th ... elements of the array
  - - Create counter for array index count
  - - Create new array to store evry other element
  - return new array
Input:
  - Array
Output:
  - Array
Problem Domain:
  - Array iteration
  - conditionals
Data Structure:
  - Array of elements
Pseudocode:
  - START
  - SET index count to 0
  - SET new Array for elements satifying conditions
  - While index less than original Array size
  - push original array item[0] to new array
  - add 2 to index: index += 2
  - repeats while index < array.size
  - Print new array to screen
  - END
Algorithm:
  -
*/
//Test Cases:
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
//Code:
=end

def oddities(int_array)
  index = 0
  odds = []

  while index < int_array.size
    odds.push(int_array[index])
    index += 2
  end
  odds
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

# Henrys-iMac:easy_3 henry$ rubocop exercise_7.rb
# For more information: https://docs.rubocop.org/rubocop/versioning.html
# Inspecting 1 file
# .

# 1 file inspected, no offenses detected
