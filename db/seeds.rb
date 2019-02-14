# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
include Faker

Product.destroy_all

10.times do
  Product.create(
    name: Faker::Beer.unique.name,
    images: "http://lorempixel.com/320/240/food"
  )
end

10.times do
  Product.create(
    name: Faker::Coffee.unique.blend_name,
    images: "http://lorempixel.com/320/240/food"

  )
end

10.times do
  Product.create(
    name: Faker::Food.unique.fruits,
    images: "http://lorempixel.com/320/240/food"

  )
end

10.times do
  Product.create(
    name: Faker::Food.unique.dish,
    images: "http://lorempixel.com/320/240/food"

  )
end
