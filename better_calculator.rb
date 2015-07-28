def prompt(message)
  puts "=> #{message}"
end

def valid_number?(input)
  input.to_i != 0
end

def operator_verb(operator)
  case operator
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Calculator! Enter your name.")

name = ''
loop do
  name = gets.chomp
  if name.empty?()
    prompt("Be sure to enter a valid name.")
  else
    break
  end
end

prompt("Hi, #{name.capitalize}!")

loop do #main loop for entire program

  number1 = ''
  loop do
    prompt("Please type the first number.")
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt("Oops! That's not a valid number.")
    end
  end

  number2 = ''
  loop do
    prompt("Thanks! What's your second number?")
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt("Oops! That's not a valid number.")
    end
  end

  operator_prompt = <<-MSG
  How would you like to math?
  Choose 1 to add
  2 to subtract
  3 to multiply or
  4 to divide.
  MSG

  prompt(operator_prompt)

  operator = ''
    loop do
      operator = gets.chomp

      if %w(1 2 3 4).include?(operator)
        break
      else
        prompt("Please choose 1, 2, 3 or 4.")
      end
    end

  answer = case operator
    when '1'
      answer = number1.to_i + number2.to_i
    when '2'
      answer = number1.to_i - number2.to_i
    when '3'
      answer = number1.to_i * number2.to_i
    when '4'
      answer = number1.to_f / number2.to_f
      # if float_answer % float_answer == 0
      #   answer == float_answer.to_i
      # else
      #   answer == float_answer
      # end
    else
      prompt("That's not a valid way to math.")
  end

  prompt("#{operator_verb(operator)} the two numbers...")

  prompt("The result is #{answer}")
  prompt("Do you want to perform another calculation? (Type Y to continue.)")
  repeat_answer = gets.chomp
    break unless repeat_answer.downcase.start_with?('y')

end

prompt("Thanks for using Calculator! Ta-ta for now!")
