require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# Load store and assign to instance variable
@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)
@store3 = Store.find_by(id: 3)
