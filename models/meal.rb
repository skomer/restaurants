require_relative '../db/sql_runner.rb'

class Meal

  attr_reader :id, :restaurant_id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @restaurant_id = options['restaurant_id'].to_i
  end

  def save
    sql = "
    INSERT INTO meals (name, restaurant_id)
    VALUES ('#{@name}', '#{@restaurant_id}')
    RETURNING *;"
   meal = SqlRunner.run(sql).first
   @id = meal['id']
  end

  def restaurant
    sql = "
      SELECT * FROM restaurants
      WHERE id = '#{restaurant_id}';
      "
    restaurant = SqlRunner.run(sql).first
    result = Restaurant.new(restaurant)
    return result
  end

  def update
    sql = "
      UPDATE meals
      SET name = '#{@name}'
      WHERE id = '#{@id}';
    "
    return SqlRunner.run(sql)
  end



end