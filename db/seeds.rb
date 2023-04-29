# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do

  Pet.create!(
    name: Faker::FunnyName.name,
    species: ["cat", "dog", "rabbit", "snake", "spider"].sample,
    age: rand(1..15),
  )

  Doctor.create!(
    name: Faker::Name.name,
    speciality: ["gastroentoglist", "gp", "dermatolgist", "therpaist", "cardiologist"].sample,
    available: [true, false].sample,
  )

end
