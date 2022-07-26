require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# stores = Stores.all
store1 = stores.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

puts store1