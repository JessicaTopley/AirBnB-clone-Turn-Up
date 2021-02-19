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

  file = URI.open('https://images.unsplash.com/photo-1603794067602-9feaa4f70e0c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80.png')
  flat = Flat.new(
    name: "Entire flat in Covent Garden",
    address: "90 Long Acre, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user1
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save!

  file = URI.open('https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80.png')
  flat = Flat.new(
    name: "Lovely flat in Marylebone",
    address: "13 Crawford St, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user1
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save!

 file = URI.open('https://images.unsplash.com/photo-1521782462922-9318be1cfd04?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1655&q=80.png')
  flat = Flat.new(
    name: "Cosy flat on Heathcote Street",
    address: "17 Heathcote Street, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user2
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save

  file = URI.open('https://images.unsplash.com/photo-1592247350271-c5efb34dd967?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80.png')
  flat = Flat.new(
    name: "Trendy flat in Dalston",
    address: "22 Ashwin St, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user2
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save

  file = URI.open('https://images.unsplash.com/photo-1499916078039-922301b0eb9b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1100&q=80.png')
  flat = Flat.new(
    name: "Lovely flat in London",
    address: "11 York Way, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user3
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save

  file = URI.open('https://images.unsplash.com/photo-1586365116351-a2094a69e00e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1655&q=80.png')
  flat = Flat.new(
    name: "Vibrant flat in Camden",
    address: "56 Camden High St, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user3
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save

  file = URI.open('https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1650&q=80.png')
  flat = Flat.new(
    name: "Beautiful flat in Angel",
    address: "416 St John St, London",
    description: "Great flat with #{rand(3..6)} rooms, #{Faker::House.room}, #{Faker::House.room} and #{Faker::House.room}. Fully furnished.",
    occupancy: rand(1..8),
    user: user4
  )
  flat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  flat.save

  file = URI.open('https://images.unsplash.com/photo-1563298723-dcfebaa392e3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1648&q=80.png')
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

