require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

store4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store6 = Store.create(name: "YAletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

p Store.all.count

var1 = Store.where(mens_apparel: true).order(created_at: :desc)

p var1

var2 = Store.select("name").where("annual_revenue < ?", 1000000)

p var2