# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: 'apple', description: 'Your standard fruit.', price: 200)
Product.create(name: 'banana', description: 'Goes bad fast, but protein!', price: 50)
Product.create(name: 'orange', description: "Doesn't rhyme!", price: 70)
Product.create(name: 'avocado', description: "Hipsters love these!", price: 190)
Product.create(name: 'grapes', description: "You can make wine!", price: 260)
