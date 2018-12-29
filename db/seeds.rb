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

Ingredient.create(name: "carrot", ingredient_type: "vegetable")
Ingredient.create(name: "onion", ingredient_type: "vegetable")
Ingredient.create(name: "banana", ingredient_type: "fruit")
Ingredient.create(name: "beef", ingredient_type: "meat")
Ingredient.create(name: "chicken", ingredient_type: "meat")
Ingredient.create(name: "rice", ingredient_type: "grain")
Ingredient.create(name: "lettuce", ingredient_type: "vegetable")
Ingredient.create(name: "salt", ingredient_type: "seasoning")
Ingredient.create(name: "pepper", ingredient_type: "seasoning")
Ingredient.create(name: "ketchup", ingredient_type: "condiment")
Ingredient.create(name: "lemon", ingredient_type: "citrus")

UserIngredient.create(user_id: 1, ingredient_id: 1)
UserIngredient.create(user_id: 1, ingredient_id: 2)
UserIngredient.create(user_id: 1, ingredient_id: 3)
UserIngredient.create(user_id: 2, ingredient_id: 4)
UserIngredient.create(user_id: 2, ingredient_id: 5)
UserIngredient.create(user_id: 2, ingredient_id: 6)
UserIngredient.create(user_id: 3, ingredient_id: 7)
UserIngredient.create(user_id: 3, ingredient_id: 8)
UserIngredient.create(user_id: 3, ingredient_id: 9)
UserIngredient.create(user_id: 4, ingredient_id: 10)
UserIngredient.create(user_id: 4, ingredient_id: 11)
UserIngredient.create(user_id: 4, ingredient_id: 1)
