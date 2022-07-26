require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class MyValidator < ActiveModel::Validator
  def validate(record)
   
    
  end
end




class Employee
  include ActiveModel::Validations
  validates_with MyValidator
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, numericality: { only_integer: true, less_than: 200, greater_than: 40 }
  validates :belongs_to, presence: true




  # change_column_null(:first_name, :last_name, false)
end

# CREATE TABLE "employees" ("id" bigserial primary key, "store_id" bigint, "first_name" character varying, "last_name" character varying, "hourly_rate" integer, "created_at" timestamp(6) NOT NULL, "updated_at" timestamp(6) NOT NULL)
# D, [2022-07-25T22:10:24.258596 #4479] DEBUG -- :    (8.7ms)  CREATE INDEX "index_employees_on_store_id" ON "employees" ("store_id")

# rails g migration add_first_name_to_users first_name:string

print "Enter store: "
new_store = gets.chomp
new_store2 = Store.create(name: new_store)
puts new_store2.valid?
puts new_store2.errors.full_messages