
class Meal

  attr_reader :id, :name, :restaurant_id

  def initialize
    @id = options['id'].to_i
    @name = options['name']
    @restaurant_id = options['restaurant_id'].to_i
  end


end