# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name:"Bob", password:"Bob")

f1 = u1.folders.find_by(name: "main")

f1.items.create(name:"item", url:"website.com", price:34.23, img:"pictre.com")

puts "seeding done"