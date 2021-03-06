# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
require 'faker'

Category.delete_all
Item.delete_all

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do 
 p category = Category.create(title: Faker::Commerce.department)
end

250.times do 
 p item = Item.create(title: Faker::Commerce.product_name, price: rand(50..120), email: Faker::Internet.email, 
    category_id: rand(10))
end