# apr_loan.rb
require 'yaml'

RESPONSES = YAML.safe_load(File.read("calculator_response.yml"))

LANGUAGE = 'en'

def messages(message, lang = LANGUAGE)
  RESPONSES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  number = number.to_s unless number.is_a? String
  /\A[+-]?\d*\.?(\.?[\d]+)?\z/.match(number) # regexr.com/59clv
end

def valid_name?(name)
  /^[a-zA-Z]+[a-zA-Z]+$/.match(name)
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp
  if /[0-9\W\_]+/.match(name) || name.empty?
    prompt('valid_name')
  else
    puts format(messages('greeting'), name: name)
    break
  end
end

loop do
  loan_amount = ''
  loop do
    prompt('loan_amount')
    loan_amount = gets.chomp

    if valid_number?(loan_amount)
      break
    else
      prompt('valid_number')
    end
  end
  loan_amount = loan_amount.to_f

  apr_rate = ''
  loop do
    prompt('apr_rate')
    apr_rate = gets.chomp

    if valid_number?(apr_rate)
      break
    else
      prompt('valid_apr')
    end
  end

  years = ''
  loop do
    prompt('loan_years')
    years = gets.chomp

    if valid_number?(years)
      break
    else
      prompt('valid_years')
    end
  end
  months = years.to_f * 12
  month_rate = (apr_rate.to_f / 100.0) / 12.0

  monthly_payment = loan_amount * (month_rate / \
  (1 - (1 + month_rate)**(-months)))

  puts format(messages('monthly_payment'), monthly_payment: \
  monthly_payment.round(2))
  puts format(messages('loan_statement'), years: years, \
                                          loan_amount: loan_amount)

  puts "=> With a #{month_rate.round(4) * 100}% monthly interest rate."
  puts "=> Your loan duration is #{months.to_i} months."

  prompt('another')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
