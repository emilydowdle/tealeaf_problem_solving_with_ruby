
# ask loan amount
# ask apr
# ask loan duration
#
# deliver monthly interest rate
# deliver loan duration in months

def prompt(message)
  puts "=> #{message}"
end

# prompt("What's your name?")
# user_name = gets.chomp.capitalize
#
# prompt("Hi, #{user_name}! Welcome to the Mortgage Calculator.")

prompt("What is the value of the home in US dollars? (e.g. $180,000)")
home_value = gets.chomp.gsub(/\D/, "").to_f

prompt("What is the annual percentage rate? (e.g. 5%)")
annual_percentage_rate = (gets.chomp.gsub(/\D/, "")).to_f/100

prompt("What is the loan duration in years? (e.g. 30)")
loan_duration_years = gets.chomp.to_f

monthly_interest_rate = annual_percentage_rate.to_f / 12

loan_duration_months = loan_duration_years.to_f * 12

monthly_payment = ( home_value * ( (monthly_interest_rate * (1 + monthly_interest_rate) ) ** loan_duration_months) )/( (1 + monthly_interest_rate) * (loan_duration_months - 1) )

prompt("For a home valued at #{home_value.to_s}, you'll pay $#{monthly_payment.to_s} each month for #{loan_duration_months.to_s} months. Your monthly interest rate will be #{monthly_interest_rate.to_s}.")



# P = L[c(1 + c)n]/[(1 + c)n - 1]
#
# fixed monthly payment (P) required to fully
# amortize a loan of L dollars over a term of n
# months at a monthly interest rate of c.
# [If the quoted rate is 6%, for example, c is .06/12 or .005]
