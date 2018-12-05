# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'


puts "Destroying doses"

Dose.destroy_all

puts "Creating ingredients...."

Ingredient.destroy_all

ing_wheatgrass = Ingredient.create!(name: "Wheat Grass")
ing_spinach = Ingredient.create!(name: "Spinach")
ing_spirulina = Ingredient.create!(name: "Spirulina")
ing_applejuice = Ingredient.create!(name: "Apple juice")
ing_cucumber = Ingredient.create!(name: "Cucumber")
ing_blueberries = Ingredient.create!(name: "Blueberries")
ing_banana = Ingredient.create!(name: "Banana")
ing_yoghurt = Ingredient.create!(name: "Yoghurt")
ing_milk = Ingredient.create!(name: "Milk")
ing_nuts = Ingredient.create!(name: "Nuts")
ing_flaxseed = Ingredient.create!(name: "Flax seeds")
ing_raspberries = Ingredient.create!(name: "Raspberries")
ing_cocoa = Ingredient.create!(name: "Cocoa")
ing_chiaseeds = Ingredient.create!(name: "Chia seeds")
ing_coconutwater = Ingredient.create!(name: "Coconut water")
ing_apple = Ingredient.create!(name: "Apple")
ing_green = Ingredient.create!(name: "Green leaves")
ing_carrot = Ingredient.create!(name: "Carrot")
ing_orange = Ingredient.create!(name: "Orange")
ing_ginger = Ingredient.create!(name: "Ginger")
ing_ice = Ingredient.create!(name: "Ice cubes")
ing_beetroot = Ingredient.create!(name: "Beetroot")
ing_avocado = Ingredient.create!(name: "Avocado")
ing_apricot = Ingredient.create!(name: "Apricots")
ing_cranberryjuice = Ingredient.create!(name: "Cranberry Juice")
ing_grapes = Ingredient.create!(name: "Grapes")
ing_broccoli = Ingredient.create!(name: "Broccoli")
ing_kale = Ingredient.create!(name: "Kale")
ing_oats = Ingredient.create!(name: "Oats")
ing_pomegranate = Ingredient.create!(name: "Pomegranate")
ing_protein = Ingredient.create!(name: "Protein Powder")
ing_lemon = Ingredient.create!(name: "Lemon")
ing_tea = Ingredient.create!(name: "Tea")
ing_cinnamon = Ingredient.create!(name: "Cinnamon")
ing_water = Ingredient.create!(name: "Water")
ing_mango = Ingredient.create!(name: "Mango")
ing_kiwi = Ingredient.create!(name: "Kiwi")
ing_watermelon = Ingredient.create!(name: "Watermelon")
ing_canteloupe = Ingredient.create!(name: "Canteloupe")
ing_goji = Ingredient.create!(name: "Goji berries")
ing_honey = Ingredient.create!(name: "Honey")
ing_pineapple = Ingredient.create!(name: "Pineapple")

puts "Creating cocktails..."

Cocktail.destroy_all

Cocktail.create!(
  [
    {
      name: "Watermelon Craze",
      remote_photo_url: "https://res.cloudinary.com/krystonen/image/upload/v1544022628/watermelon.jpg"
    },
    {
      name: "Vitaminizer",
      remote_photo_url: "https://res.cloudinary.com/krystonen/image/upload/v1544022483/carrot.jpg"
    },
    {
      name: "Minty Strawberry",
      remote_photo_url: "https://res.cloudinary.com/krystonen/image/upload/v1544022484/strawberry.jpg"
    },
    {
      name: "Pineapple Love",
      remote_photo_url: "https://res.cloudinary.com/krystonen/image/upload/v1544022484/pineapple.jpg"
    },
    {
      name: "Best of Blues",
      remote_photo_url: "https://res.cloudinary.com/krystonen/image/upload/v1544022483/blueb.jpg"
    },
    {
      name: "Kiwi with Green",
      remote_photo_url: "https://res.cloudinary.com/krystonen/image/upload/v1544022483/kiwi.jpg"
    },
    {
      name: "Apple Raspberries",
      remote_photo_url: "https://res.cloudinary.com/krystonen/image/upload/v1544022483/raspberry.jpg"
    },
    {
      name: "Icy Mango",
      remote_photo_url: "https://res.cloudinary.com/krystonen/image/upload/v1544022484/mango.jpg"
    }
  ]
)



# Ingredient.delete_all

# url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

# file = open(url).read

# data = JSON.parse(file)

# # p data.first[1].class #array
# # p data.first[1]
# # p data.first[1][0].class #hash
# # p data.first[1][0]
# # p data.first[1][0]["strIngredient1"] #one item

# data.first[1].each do |i|
#   Ingredient.create(name: i["strIngredient1"])
# end
