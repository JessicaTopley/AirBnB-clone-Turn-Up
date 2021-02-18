# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'destroying data'
Booking.destroy_all
Flat.destroy_all
User.destroy_all
puts 'creating users and flats'

user1 = User.create!(email: "jessica@gmail.com", password: "123456", first_name: "Jessica", last_name: "Topley")
user2 = User.create!(email: "miranda@gmail.com", password: "123456", first_name: "Miranda", last_name: "Frudd")
user3 = User.create!(email: "catherine@gmail.com", password: "123456", first_name: "Catherine", last_name: "Maclellan")
user4 = User.create!(email: "martin@gmail.com", password: "123456", first_name: "Martin", last_name: "Mwaka")

  file = URI.open('https://images.unsplash.com/photo-1589834390005-5d4fb9bf3d32?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80.png')
  flat = Flat.new(
    name: "Entire flat in Covent Garden",
    address: "90 Long Acre, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user1
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save!

  file = URI.open('https://images.unsplash.com/photo-1556912172-45b7abe8b7e1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8Mnw0NDcxNDU0fHxlbnwwfHx8&auto=format&fit=crop&w=800&q=60.png')
  flat = Flat.new(
    name: "Lovely flat in Marylebone",
    address: "13 Crawford St, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user1
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save!

 file = URI.open('https://images.unsplash.com/photo-1566152474719-8d79ca1a4c66?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwyNDMzNzk0fHxlbnwwfHx8&auto=format&fit=crop&w=800&q=60.png')
  flat = Flat.new(
    name: "Cosy flat on Heathcote Street",
    address: "17 Heathcote Street, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user2
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save

  file = URI.open('https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixid=MXwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8Nnw0NDcxNDU0fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60.png')
  flat = Flat.new(
    name: "Trendy flat in Dalston",
    address: "22 Ashwin St, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user2
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save

  file = URI.open('https://images.unsplash.com/photo-1600210492486-724fe5c67fb0?ixid=MXwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NXwyNTg1Mjc2NXx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60.png')
  flat = Flat.new(
    name: "Lovely flat in London",
    address: "11 York Way, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user3
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save

  file = URI.open('https://images.unsplash.com/photo-1595846519845-68e298c2edd8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwyNTg1Mjc2NXx8ZW58MHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60.png')
  flat = Flat.new(
    name: "Vibrant flat in Camden",
    address: "56 Camden High St, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user3
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save

  file = URI.open('https://images.unsplash.com/photo-1585821570368-53a593a002be?ixid=MXwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTd8MjU4NTI3NjV8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60.png')
  flat = Flat.new(
    name: "Beautiful flat in Tottenham",
    address: "36 Park View Road, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user4
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save

  file = URI.open('https://images.unsplash.com/photo-1585670149967-b4f4da88cc9f?ixid=MXwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MjB8MjU4NTI3NjV8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60.png')
  flat = Flat.new(
    name: "Accessable flat in Kings Cross",
    address: "140 York Way, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user4
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save

  puts "#{Flat.count} flats created"

