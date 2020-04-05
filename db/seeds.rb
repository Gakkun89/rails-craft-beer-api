# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

path = './beers.json'

beers = JSON.parse(File.read(path))

beers.each do |beer|
  Beer.create!(
    name: beer[1]['name'],
    brewery: beer[1]['brewery'],
    style: beer[1]['style'],
    abv: beer[1]['abv'].gsub('%', '').to_f,
    desc: beer[1]['desc'],
    ibu: beer[1]['ibu'].to_i,
    rating: beer[1]['rating'].to_f,
    image: 'TODO'
  )
end
