require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
p Employee.all.count


# CREATE TABLE "employees" ("id" bigserial primary key, "store_id" bigint, "first_name" character varying, "last_name" character varying, "hourly_rate" integer, "created_at" timestamp(6) NOT NULL, "updated_at" timestamp(6) NOT NULL)
# D, [2022-07-25T22:10:24.258596 #4479] DEBUG -- :    (8.7ms)  CREATE INDEX "index_employees_on_store_id" ON "employees" ("store_id")

# rails g migration add_first_name_to_users first_name:string

class Store < ApplicationRecord
  has_many :employees
end
class Employee < ApplicationRecord
  belongs_to :store
end


@store1.save
# store1 save
@store1.employees.create!(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Ganga", last_name: "Ganesha", hourly_rate: 120)
@store2.employees.create(first_name: "Kasf", last_name: "Nama", hourly_rate: 180)

# p Employee.all.count