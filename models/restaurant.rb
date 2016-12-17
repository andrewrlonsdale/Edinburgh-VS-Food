require_relative('../db/sql_runner')

class Restaurant

  attr_reader( :name, :location, :website, :directions, :number, :id )

  def initialize( options )
    @id = nil || options['id'].to_i
    @name = options['name'].to_s
    @location = options['location'].to_s
    @website = options['website'].to_s
    @directions = options['directions'].to_s
    @number = options['number'].to_s
  end

  def save()
    sql = "INSERT INTO restaurant (
    name,location,website,directions,number ) VALUES 
    ('#{ @name }','#{ @location }','#{ @website }','#{ @directions }','#{@number}') 
    RETURNING *"
    result = SqlRunner.run(sql)
    @id = result.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM restaurant"
    restaurants = SqlRunner.run( sql )
    result = restaurants.map { |restaurant| Restaurant.new( restaurant ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM restaurant WHERE id=#{id}"
    restaurants = SqlRunner.run( sql )
    result = Restaurant.new( restaurants.first )

    return result
  end

  def self.update( options )
    sql = "UPDATE restaurant SET
    name='#{options['name']}',
    location='#{options['location']}',
    website='#{options['website']}',
    directions='#{options['directions']}',
    number='#{options['number']}'
    WHERE id='#{options['id']}'"
    SqlRunner.run( sql )
  end

  def self.destroy( id )
    sql = "DELETE FROM restaurant WHERE id=#{id}"
    SqlRunner.run( sql )
  end

  def self.get_many(sql)
    restaurants = SqlRunner.run(sql)
    result = restaurants.map { |restaurant| Restaurant.new(restaurant)}
    return result
  end


end


