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

# select from store where mens_apparel = true
@mens_stores = Store.where(:mens_apparel => true)

# loop through each store, display name & revenue
@mens_stores.select {
  |store| puts "#{store.name}, #{store.annual_revenue}"
}

# select stores where womens_apparel true and annual rev < 1000000
@womens_stores = Store.where("womens_apparel = true and annual_revenue < 1000000")

@womens_stores.select {
  |store| puts "#{store.name}, #{store.annual_revenue}"
}