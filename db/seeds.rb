# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Isaacac', firstname: 'Isaac', lastname: 'chavez', email: 'isaac@isaac.com')
Recipe.create(name: 'Milk and Cereal', user_id: 1)
Measurement.create(category: 'liquid', unit_of_measure: 'cup')
Measurement.create(category: 'solid', unit_of_measure: 'grams')
Ingredient.create(name: 'Milk',  recipe_id: 1, measurement_id: 1)
Ingredient.create(name: 'Cereal',  recipe_id: 1, measurement_id: 2)
