# count_sheep.rb

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end
  
  p count_sheep

# answer
# 0   The times method from Integer Class iterates the block int times 
# 1   from 0 to int - 1
# 2
# nil

