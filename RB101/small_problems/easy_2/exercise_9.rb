# exercise_9.rb

# Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
# What does this code print out? 
# Think about it for a moment 
# before continuing.

# Local variable name is assigned the value 'Bob
# local variable save_name is assigned the value "Bob"
# local variable name is reassigned to the value 'Alice'
# the Kernel method() puts() prints 'Alice' 'Bob'

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# local vaeriable name is assigned the value 'Bob'
# local variable save_name assigned the value 'Bob'
# the String method uppcase! mutates local variable name
# the kernel() puts() prints "BOB" "BOB"