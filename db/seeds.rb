# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
require 'faker'

# Clear existing data
Flat.destroy_all

# Create fake flats
7.times do
  Flat.create!(
    name: Faker::Address.unique.community,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: Faker::Number.between(from: 50, to: 200),
    number_of_guests: Faker::Number.between(from: 1, to: 5)
    picture_url: 'https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200'
  )
end
