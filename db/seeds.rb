# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

Ingredient.delete_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

file = open(url).read

data = JSON.parse(file)

# p data.first[1].class #array
# p data.first[1]
# p data.first[1][0].class #hash
# p data.first[1][0]
# p data.first[1][0]["strIngredient1"] #one item

data.first[1].each do |i|
  Ingredient.create(name: i["strIngredient1"])
end
