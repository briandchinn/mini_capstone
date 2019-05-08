# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.create(name:"DVD Player", price: 100, image_url:"dvd_player.jpg", description: "The best DVD player")
product = Product.create(name:"Record Player", price: 100, image_url:"record_player.jpg", description: "Back to the basics")
product = Product.create(name:"Boombox", price: 250, image_url:"boombox.jpg", description: "Taking it back to the old skool")
product = Product.create(name:"Computer", price: 2000, image_url:"computer.jpg", description: "Top of the line performance")
product = Product.create(name:"iPhone", price: 700, image_url:"iphonejpg", description: "The best phone")