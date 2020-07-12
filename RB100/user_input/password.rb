# password.rb

PASSWORD = "SecreT"

print 'Please enter your password:'

while (password = gets.chomp.to_s) != PASSWORD
  puts "That's not the password."
end
puts "Welcome!"
