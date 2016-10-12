
class Meal

  attr_reader :id, :name, :restaurant_id

  def initialize
    @id = options['id'].to_i
    @name = options['name']
    @restaurant_id = options['restaurant_id'].to_i
  end

  def save
   sql = "INSERT INTO meals (name, restaurant_id)
     VALUES ('#{@name}', '#{@restaurant_id}')
     RETURNING *;"
   meal = SqlRunner.run(sql).first
   @id = meal['id']
  end


end