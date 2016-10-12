require_relative 'models/meal.rb'
require_relative 'models/restaurant.rb'
require 'pry-byebug'

pakho = Restaurant.new({'name' => "Pak Ho", 'address' => "Banbury Road", 'cuisine' => "Cantonese"})
pakho.save()

shamrock = Restaurant.new({'name' => "The Shamrock", 'address' => "O'Connell Street", 'cuisine' => "Traditional"})
shamrock.save()

meal1 = Meal.new({'name' => "King Prawn Chow Mein", 'restaurant_id' => pakho.id})
meal1.save()

meal2 = Meal.new({'name' => "Pork Dumplings", 'restaurant_id' => pakho.id})
meal2.save()

meal3 = Meal.new({'name' => "Shepherd's Pie", 'restaurant_id' => shamrock.id})
meal3.save()

meal4 = Meal.new({'name' => "Irish Stew", 'restaurant_id' => shamrock.id})
meal4.save()


binding.pry
nil


















binding.pry
nil