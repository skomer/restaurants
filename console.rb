require_relative 'models/meal.rb'
require_relative 'models/restaurant.rb'
require 'pry-byebug'

pakho = Restaurant.new({'name' => "Pak Ho", 'address' => "Banbury Road", 'cuisine' => "Cantonese"})

shamrock = Restaurant.new({'name' => "The Shamrock", 'address' => "O'Connell Street", 'cuisine' => "Traditional"})

meal1 = Meal.new({'name' => "King Prawn Chow Mein", 'restaurant_id' => pakho.id})
meal2 = Meal.new({'name' => "Pork Dumplings", 'restaurant_id' => pakho.id})
meal3 = Meal.new({'name' => "Shepherd's Pie", 'restaurant_id' => shamrock.id})
meal4 = Meal.new({'name' => "Irish Stew", 'restaurant_id' => shamrock.id})




















binding.pry
nil