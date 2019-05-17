# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# supplier = Supplier.create(name: "Sammy", email: "sammy@gmail.com", phone_number: "310-798-6735")
# supplier = Supplier.create(name: "Bill", email: "bill@gmail.com", phone_number: "310-791-6734")
# supplier = Supplier.create(name: "Sandy", email: "sandy@gmail.com", phone_number: "310-793-6738")
# supplier = Supplier.create(name: "Zoey", email: "zoey@gmail.com", phone_number: "310-670-4518")

#iniital seeds

# product = Product.create(name:"DVD Player", price: 100, image_url:"dvd_player.jpg", description: "The best DVD player")
# product = Product.create(name:"Record Player", price: 100, image_url:"record_player.jpg", description: "Back to the basics")
# product = Product.create(name:"Boombox", price: 250, image_url:"boombox.jpg", description: "Taking it back to the old skool")
# product = Product.create(name:"Computer", price: 2000, image_url:"computer.jpg", description: "Top of the line performance")
# product = Product.create(name:"iPhone", price: 700, image_url:"iphonejpg", description: "The best phone")



# 20.times do
#   Product.create!(name: FFaker::Product.product,
#                    price: FFaker::Internet.email,
#                    image_url: FFaker::Image.url,
#                    description: FFaker::Lorem.sentence
#                   )
# end


Image.create!([
  {url: "https://images-na.ssl-images-amazon.com/images/I/71fC3TYXC1L._SL1500_.jpg", product_id: 1},
  {url: "https://images-na.ssl-images-amazon.com/images/I/81LSXTzgjOL._SL1500_.jpg", product_id: 26},
  {url: "https://images-na.ssl-images-amazon.com/images/I/61oUcV06JbL._SL1200_.jpg", product_id: 2},
  {url: "https://images-na.ssl-images-amazon.com/images/I/81KRH%2Bqv9dL._SL1500_.jpg", product_id: 3},
  {url: "https://images-na.ssl-images-amazon.com/images/I/71fKSbJTRdL._SL1500_.jpg", product_id: 4},
  {url: "https://images-na.ssl-images-amazon.com/images/I/71HJnJrxzEL._SL1152_.jpg", product_id: 5},
  {url: "https://images-na.ssl-images-amazon.com/images/I/41uGNGhqZCL.jpg", product_id: 27},
  {url: "https://images-na.ssl-images-amazon.com/images/I/81UWs-pXJfL._SL1500_.jpg", product_id: 28},
  {url: "https://images-na.ssl-images-amazon.com/images/I/91s5RcaiQeL._SL1500_.jpg", product_id: 29},
  {url: "https://images-na.ssl-images-amazon.com/images/I/81naihI0PmL._SL1500_.jpg", product_id: 30},
  {url: "https://images-na.ssl-images-amazon.com/images/I/91UQAYF2zBL._SL1500_.jpg", product_id: 31},
  {url: "https://images-na.ssl-images-amazon.com/images/I/91mqk-55lqL._SL1500_.jpg", product_id: 32},
]) 