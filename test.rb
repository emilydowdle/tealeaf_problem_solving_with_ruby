#psuedo code practice

#a method that returns the sum of two integers

# START
#
# SET a method name and parameter with two values
#
# GET input from user - two numbers to add
#
# CALL method with inputed values
#
# END

def sum_of_two_numbers(var1, var2)
  answer = var1.to_i + var2.to_i
end

puts sum_of_two_numbers(3, 4)

# a method that takes an array of strings, and returns a string that is all those strings concatenated together

# START
# SET array of strings
# SET a method with an empty parameter
# DEFINE method to concatenate strings of array
# END

def array_of_strings(arr)
  arr.join(" ").inspect
end

array = ["awesome", "fantastic", "fierce"]
puts array_of_strings(array)

puts array


# a method that takes a n array of integers, and returns a new array with every other element
