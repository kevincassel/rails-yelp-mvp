# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning DB"
Restaurant.destroy_all

puts "Create restaurants"
basic = { name: "Basic Frite", address: "30 Rue du Maréchal Lyautey, 59000 Lille", phone_number: "0666547822", category: "french" }
moshi = { name: "Moshi Moshi", address: "145 Rue du Molinel, 59800 Lille", phone_number: "03 20 74 81 60", category: "japanese" }
morty = { name: "Chez Morty", address: "2 Avenue du chien, 75000 Paris", phone_number: "0660204968", category: "belgian" }
aldente = { name: "Aldente Pizza", address: "90 Boulevard du chat, 62100 Calais", phone_number: "0629381048", category: "italian" }
dragon = { name: "Le dragon dorée", address: "49 Avenue du colonel Pollet, 59370 Mons-en-Baroeul", phone_number: "0739657294", category: "chinese" }

[basic, moshi, morty, aldente, dragon].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Create #{restaurant.name}"
end

puts "Finished"