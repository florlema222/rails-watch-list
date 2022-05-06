# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  movie = Movie.new(
    title: Faker::Movie.title.to_s,
    overview: Faker::Lorem.sentences(number: 1).to_s,
    poster_url: Faker::LoremFlickr.image(size: "50x60"),
    rating: Faker::Number.decimal(l_digits: 1)
  )
  movie.save
end
