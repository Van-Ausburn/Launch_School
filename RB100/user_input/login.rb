# login.rb

print 'Please enter your user name: '

while (user_name = gets.chomp.to_s) != "admin"
  print "Authorization failed! Try again: "
end

print 'Please enter your password: '

while (password = gets.chomp.to_s) != "SecreT"
  print "That's not the password: "
end

puts "Welcome!"



