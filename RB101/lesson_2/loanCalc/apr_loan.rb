# apr_loan.rb
require 'yaml'
# Assignment: Mortgage / Car Loan Calculator
# Take everything you've learned so far and
# build a mortgage calculator (or car payment
#   calculator -- it's the same thing).

# You'll need three pieces of information:

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
# From the above, you'll need to
# calculate the following things:

# monthly interest rate
# loan duration in months
# monthly payment
# You can use the following formula:

# Mortgage Calculator Formula

# Translated to Ruby, this is what
# the formula looks like:

# m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months
# When you write your program, don't use
# the single-letter variables m, p, j, and
# n; use explicit names. For instance,
# you may want to use loan_amount instead
# of p.

# Finally, don't forget to run your code
# through Rubocop.

# Hints:

# Figure out what format your inputs need
# to be in. For example, should the interest
# rate be expressed as 5 or .05, if you mean
# 5% interest?
# If you're working with Annual Percentage
# Rate (APR), you'll need to convert that to
# a monthly interest rate.
# Be careful about the loan duration -- are
# you working with months or years? Choose
# variable names carefully to assist in
# remembering.

RESPONSES = YAML.safe_load(File.read("calculator_response.yml"))

LANGUAGE = 'en'

def messages(message, lang='en')
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
  if /[0-9\s\W\_]+/.match(name) || name.empty?
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
  puts "=> Your loan duration in months is #{months.to_i}."

  prompt('another')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
