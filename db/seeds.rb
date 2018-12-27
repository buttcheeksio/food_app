# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "John Martinez")
User.create(name: "Nina Paradiz")
User.create(name: "Peter Haas")
User.create(name: "Deena Sadek")

Recipe.create(name: "beef stew", directions: "cook until done", user_id: 1)
Recipe.create(name: "vegetable stew", directions: "cook until done", user_id: 1)
Recipe.create(name: "fish burgers", directions: "cook until done", user_id: 2)
Recipe.create(name: "candy canes", directions: "cook until done", user_id: 2)
Recipe.create(name: "pizza", directions: "cook until done", user_id: 3)
Recipe.create(name: "burrito hash", directions: "cook until done", user_id: 3)
