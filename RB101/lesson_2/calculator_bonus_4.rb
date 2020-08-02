require 'yaml'

MESSAGES = YAML.safe_load(File.read("prompt.yml"))

LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end

# https://medium.com/launch-school/number-validation-with-regex-ruby-393954e46797
def valid_number?(number)
  number = number.to_s unless number.is_a? String
  /\A[+-]?\d*\.?(\.?[\d]+)?\z/.match(number) # regexr.com/59clv
end

def operation_to_message(op)
  operation = case op
              when '1'
                'Adding'
              when '2'
                'Subtracting'
              when '3'
                'Multiplying'
              when '4'
                'Dividing'
              end

  operation
end

prompt('welcome')

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?
    prompt('valid_name')
  else
    break
  end
end
puts "=> Hello #{name}"

loop do # main loop
  number1 = ''
  loop do
    prompt('input_one')
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt('valid_number')
    end
  end

  number2 = ''
  loop do
    prompt('input_two')
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt('valid_number')
    end
  end

  prompt('operator_prompt')

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('choice')
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end
  prompt('result')

  puts result.round(4) if valid_number?(result)

  prompt('another')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('thanks')
