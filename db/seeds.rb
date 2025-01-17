# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
User.destroy_all
Recipe.destroy_all
Allergen.destroy_all
RecipeIngredient.destroy_all

i1 = Ingredient.create(name: "eggs")
i2 = Ingredient.create(name: "butter")
i3 = Ingredient.create(name: "salt")
i4 = Ingredient.create(name: "pepper")
i5 = Ingredient.create(name: "flour")
i6 = Ingredient.create(name: "baking powder")

u1 = User.create(name: "Adam")
u2 = User.create(name: "Betty")
u3 = User.create(name: "Carl")
u4 = User.create(name: "Denise")
u5 = User.create(name: "Earl")

r1 = Recipe.create(name: "Sandwich", user_id: u1.id)
r2 = Recipe.create(name: "Taco", user_id: u2.id)
r3 = Recipe.create(name: "Pizza", user_id: u3.id)
r4 = Recipe.create(name: "Hamburger", user_id: u4.id)
r5 = Recipe.create(name: "User 4 Pizza", user_id: u4.id)
r6 = Recipe.create(name: "User 4 Nachos", user_id: u4.id)

a1 = Allergen.create(user_id: u1.id, ingredient_id: i1.id)
a2 = Allergen.create(user_id: u1.id, ingredient_id: i2.id)
a3 = Allergen.create(user_id: u1.id, ingredient_id: i3.id)
a4 = Allergen.create(user_id: u1.id, ingredient_id: i4.id)
a5 = Allergen.create(user_id: u1.id, ingredient_id: i5.id)
a6 = Allergen.create(user_id: u2.id, ingredient_id: i1.id)
a7 = Allergen.create(user_id: u2.id, ingredient_id: i2.id)
a8 = Allergen.create(user_id: u2.id, ingredient_id: i3.id)
a9 = Allergen.create(user_id: u2.id, ingredient_id: i4.id)
a10 = Allergen.create(user_id: u2.id, ingredient_id: i5.id)
a10 = Allergen.create(user_id: u3.id, ingredient_id: i1.id)
a10 = Allergen.create(user_id: u3.id, ingredient_id: i2.id)
a10 = Allergen.create(user_id: u3.id, ingredient_id: i3.id)
a10 = Allergen.create(user_id: u4.id, ingredient_id: i1.id)
a10 = Allergen.create(user_id: u4.id, ingredient_id: i2.id)
a10 = Allergen.create(user_id: u5.id, ingredient_id: i1.id)

RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i1.id)
RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i2.id)

RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i1.id)
RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i2.id)
RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i3.id)


RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i1.id)
RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i2.id)
RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i3.id)
RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i4.id)


RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i1.id)
RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i2.id)
RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i3.id)
RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i4.id)
RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i5.id)
RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i6.id)


puts "seeds done!"