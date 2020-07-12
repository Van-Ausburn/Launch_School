# something2.rb

loop do
    puts '>> Do you want me to print something? (y/n)?'
    answer = gets.chomp.downcase
    if answer == 'y'
      puts 'Something.'
    elsif answer == 'n'
      puts ''
    else answer != 'y' || 'n'
      puts 'Invalid answer! Please enter y or n.'
    end
    break if answer == 'y' || answer == 'n'
  end