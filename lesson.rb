# ### object level?
#
# class Person
#   def initialize(name, address)
#     @name = name #this is a state #instance variables
#     @address = address #this is a state
#     # @hobby = hobby
#   end
#
#   def get_name #instance methods because it's an instance of a class
#     @name
#   end
#
#   def hobby(activity)
#     @hobby = activity
#   end
# end
#
# # an object is instatiated from a class
# # the constructor is a method that instantiates a new class
# # an instance is the same as an object
#
# bob = Person.new('Bob', '124 Newberry St.')
# jim = Person.new('Jim', 'homeless')
#
# jim.hobby('tennis')
#
# puts bob.inspect
# puts jim.inspect
#
# # puts bob.inspect
# # puts jim.inspect
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#








### class level?

# class methods and variables

class Person
  @@total = 0

  def self.total_people
    puts "The total is #{@@total}"
  end

  def initialize
    @@total += 1
  end

  def say_hi
    puts "say hi"
  end
end


bob = Person.new
# bob.total_people
puts bob.inspect

puts bob.say_hi



Person.total_people















#
