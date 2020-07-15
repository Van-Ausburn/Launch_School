# exercise_6.rb

# Exclusive Or
# The || operator returns a truthy value if either 
# or both of its operands are truthy, a falsey value 
# if both operands are falsey. The && operator 
#   returns a truthy value if both of its operands 
#   are truthy, and a falsey value if either operand 
#   is falsey. This works great until you need only 
#   one of two conditions to be truthy, the so-called 
#   exclusive or.

# In this exercise, you will write a function named 
# xor that takes two arguments, and returns true if 
# exactly one of its arguments is truthy, false 
# otherwise. Note that we are looking for a boolean 
# result instead of a truthy/falsy value as returned 
# by || and &&.

# Examples:

# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

=begin

Problem: 
  -  Define a method that takes two arguments
  -  the method will return true if one argument is true
  -  true && true = false
  -  false && false = false
  -  true || false = true 
  -  false || true = true
Input: 
  -  2 boolean arguments
Output: 
  -  true false
Problem Domain: 
  -  truthy falsey
Data Structure: 
  -  
Pseudocode: 
  -  START
  -  Define method xor that takes 2 arguments
  -  IF value 1 is true and value 2 is false returns true
  -  If value 2 is true and value 1 is false returns true
  -  If value 1 is true and value 2 is true return false
  -  If value 2 is true and value 1 is true return false

Algorithm: 
  - 
*/ 

//Code:


//Test Cases: 
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false


=end

def xor?(one, two)
  return true if one && !two
  return true if two && !one

  false
end

p xor?(5.even?, 4.even?) #== true
p xor?(5.odd?, 4.odd?) #== true
p xor?(5.odd?, 4.even?) #== false
p xor?(5.even?, 4.odd?) #== false
