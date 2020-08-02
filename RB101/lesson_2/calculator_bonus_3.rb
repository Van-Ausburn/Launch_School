# calculator_bonus_3.rb

def prompt(message)
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

prompt("Welcome to the calculator! Enter your name: ")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?
    prompt("Make sure you enter a valid name!")
  else
    break
  end
end
prompt("Hello #{name}")

loop do # main loop
  number1 = ''
  loop do
    prompt("What is the first number?: ")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("That isn't a valid number!")
    end
  end

  number2 = ''
  loop do
    prompt("What is the second number?: ")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("That number isn;t valid!")
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Enter a valid operator!( 1 2 3 or 4)")
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
  prompt("The result is #{result.round(4)}")

  prompt("Do you want to perform another calculation? (Y to run\
 calculator again):")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator!")
