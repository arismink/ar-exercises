require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create([
  {name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true},
  {name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false},
  {name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true}
])

# # select name from store where mens_apparel = true
# @mens_stores = Store.where(:mens_apparel => true).pluck(:name, :annual_revenue)

# puts @mens_stores

# # @womens_stores = Store.where(:womens_apparel => true, :annual_revenue < 1000000000).(:name, :annual_revenue)

# @womens_stores = Store.where(["womens_apparel = true and annual_revenue < 1000000000"]).pluck(:name, :annual_revenue)

# puts @womens_stores