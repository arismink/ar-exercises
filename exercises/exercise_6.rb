require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create([
  {first_name: "Sally", last_name: "Bob", hourly_rate: 40},
  {first_name: "Joe", last_name: "Bob", hourly_rate: 30},
  {first_name: "Ray", last_name: "Jr", hourly_rate: 90},
  {first_name: "Tally", last_name: "Mob", hourly_rate: 140},
])

@store2.employees.create([
  {first_name: "Tina", last_name: "Fey", hourly_rate: 50},
  {first_name: "James", last_name: "Dean", hourly_rate: 40},
  {first_name: "Lisa", last_name: "Bob", hourly_rate: 90},
])