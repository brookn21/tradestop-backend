# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p "destroying all shoes"
Shoe.destroy_all

p 'creating shoes'

all_shoes = JSON.parse(File.read(Rails.root.join('db/goat_shoes.json')))

all_shoes.each do |shoe|
    Shoe.create(
        name: shoe["name"],
        brand: shoe['brand_name'],
        color: shoe['color'],
        price: shoe['retail_price_cents'],
        image: shoe['grid_picture_url']
    )
end