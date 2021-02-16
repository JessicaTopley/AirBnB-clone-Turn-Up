# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

file = URI.open('https://images.unsplash.com/photo-1565329921943-7e537b7a2ea9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=667&q=80.png')

Flat.destroy_all 
User.destroy_all

user1 = User.create!(email: "jessica@gmail.com", password: "123456", first_name: "Jessica", last_name: "Topley")
5.times do
  flat = Flat.new(
    name: ["Lovely flat in #{Faker::Address.city}", "Flat on #{Faker::Address.street_name}"].sample,
    address: Faker::Address.full_address,
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user1
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save
end

user2 = User.create!(email: "miranda@gmail.com", password: "123456", first_name: "Miranda", last_name: "Frudd")
5.times do
  flat = Flat.new(
    name: ["Lovely flat in #{Faker::Address.city}", "Flat on #{Faker::Address.street_name}"].sample,
    address: Faker::Address.full_address,
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user2
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save
end

user3 = User.create!(email: "catherine@gmail.com", password: "123456", first_name: "Catherine", last_name: "Maclellan")
5.times do
  flat = Flat.new(
    name: ["Lovely flat in #{Faker::Address.city}", "Flat on #{Faker::Address.street_name}"].sample,
    address: Faker::Address.full_address,
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user3
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save
end

user4 = User.create!(email: "martin@gmail.com", password: "123456", first_name: "Martin", last_name: "Mwaka")
5.times do
  flat = Flat.new(
    name: ["Lovely flat in #{Faker::Address.city}", "Flat on #{Faker::Address.street_name}"].sample,
    address: Faker::Address.full_address,
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user4
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save
end

  puts "#{Flat.count} flats created"

