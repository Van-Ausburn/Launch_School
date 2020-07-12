# exercise_2.rb

#[String#insert](https://ruby-doc.org/core-2.4.0/String.html#method-i-insert)

# insert(index, other_str) → str
# Inserts other_str before the character at the given index,
# modifying str. Negative indices count from the end of the
# string, and insert after the given character. The intent
# is insert aString so that it starts at the given index.

# "abcd".insert(0, 'X')    #=> "Xabcd"
# "abcd".insert(3, 'X')    #=> "abcXd"
# "abcd".insert(4, 'X')    #=> "abcdX"
# "abcd".insert(-3, 'X')   #=> "abXcd"
# "abcd".insert(-1, 'X')   #=> "abcdX"


a = %w(a b c d e)

p a.insert(3, 5, 6, 7)
