# day_night.rb



def time_of_day(bool)
  if bool == true
    puts "It's daylight!"
  else
    puts "It's nighttime!"
  end
end

daylight = [true, false].sample
time_of_day(daylight)
