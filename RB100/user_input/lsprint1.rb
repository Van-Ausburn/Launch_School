# lsprint1.rb

PASSWORD = "SecreT"
USER_NAME = "admin" 

loop do
  print 'Please enter your user name: '
  user_name = gets.chomp.to_s

  print 'Please enter your password: '
  password = gets.chomp.to_s

  break if password == PASSWORD && user_name == USER_NAME

  puts "Authorization failed!"
end
puts "Welcome!"

