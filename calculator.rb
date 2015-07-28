puts "Welcome to Calculator! Please type the first number."

number1 = gets.chomp

puts "Thanks! What's your second number?"
number2 = gets.chomp

puts "How would you like to use the maths? Type 1 to add, 2 to subtract, 3 to multiply and 4 to divide."
maths = gets.chomp

case
  when maths == '1'
    answer = number1.to_i + number2.to_i
  when maths == '2'
    answer = number1.to_i - number2.to_i
  when maths == '3'
    answer = number1.to_i * number2.to_i
  when maths == '4'
    answer = number1.to_f / number2.to_f
    # if float_answer % float_answer == 0
    #   answer == float_answer.to_i
    # else
    #   answer == float_answer
    # end
  else
    puts "That's not a valid way to math."
end

puts answer
