# exercise_4.rb

# problem:
#   Write a method that counts the number of
#   occurrences of each element in a given array.
#   The words in the array are case-sensitive:
#   'suv' != 'SUV'. ` Once counted, print each
#   element alongside the number of occurrences.

# input: array
# output: print array unique elements = array elements count

# examples
#  car 4
#  truck 3
#  SUV 1
#  motorcycle 2

# pseudocode
#   define method
#   find each unique array item
#   count each unique vehicle
#   hash = each unique item = array count vehicle
#   iterate hash
#   print hash vehicle count


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(cars)
  times = {}
  cars.uniq.each do |vehicle|
    times[vehicle] = cars.count(vehicle)
  end

  times.each do |vehicle, count|
    puts "#{vehicle} #{count}"
  end
end
count_occurrences(vehicles)

# uby 2.7 Enumerable#tally

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# def count_occurrences(array)
#   occurences = array.tally

#   occurences.each do |item, count|
#     puts "#{item} #{count}"
#   end

# end

# count_occurrences(vehicles)
