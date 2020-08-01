# calculator_bonus_2.rb

# Integer or float validator

def number?(number)
  !!/\A[+-]?\d*\.?(\.?[\d]+)?\z/.match(number) # regexr.com/59clv
end

p number?('1.')
p number?('.1')
p number?('1.0')
p number?('1')
p number?('0.1')
p number?('two')
p number?('-1')
p number?('1**2')
p number?('1003845')
p number?('0b100101001011')
p number?('1234e-2')
p number?('0d170')
p number?('0xAA')

