# password.rb

PASSWORD = "SecreT"

print 'Please enter your password:'

while (password = gets.chomp.to_s) != PASSWORD
  puts "#{password} is not the password."
end
puts "Welcome!"
