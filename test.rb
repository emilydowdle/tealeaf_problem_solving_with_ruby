require 'pry'

# #psuedo code practice
#
# #a method that returns the sum of two integers
#
# # START
# #
# # SET a method name and parameter with two values
# #
# # GET input from user - two numbers to add
# #
# # CALL method with inputed values
# #
# # END
#
# def sum_of_two_numbers(var1, var2)
#   answer = var1.to_i + var2.to_i
# end
#
# puts sum_of_two_numbers(3, 4)
#
# # a method that takes an array of strings, and returns a string that is all those strings concatenated together
#
# # START
# # SET array of strings
# # SET a method with an empty parameter
# # DEFINE method to concatenate strings of array
# # END
#
# def array_of_strings(arr)
#   arr.join(" ").inspect
# end
#
# array = ["awesome", "fantastic", "fierce"]
# puts array_of_strings(array)
#
# puts array
#
#
# # a method that takes a n array of integers, and returns a new array with every other element


# array = [1, 2, 3]
#
# sum = 0
#
# array.each { |n| sum += n }
#
# puts sum

# picks a number randomly from one to a hundred
# and then asks the user to guess and tells the
# user if it's higher or lower

num = (1..100).to

pick = num.sample

puts "Pick a number 1 through 100"
choice = gets.chomp.to_i

loop do |e|

end
