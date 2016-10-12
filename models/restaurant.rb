
class Restaurant

  attr_reader :id, :name, :address, :cuisine

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @address = options['address']
    @cuisine = options['cuisine']
  end




end