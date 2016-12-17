require_relative('../db/sql_runner')

class Challenge

  attr_reader( :name, :info, :deal, :day, :food_type, :id )

  def initialize( options )
    @id = nil || options['id'].to_i
    @name = options['name'].to_s
    @info = options['info'].to_s
    @deal = options['deal'].to_s
    @day = options['day'].to_s
    @food_type = options['food_type'].to_s
  end

  def save()
    sql = "INSERT INTO challenge (
    name,info,deal,day,food_type ) VALUES 
    ('#{ @name }','#{ @info }','#{ @deal }','#{ @day }','#{@food_type}') 
    RETURNING *"
    food_data = SqlRunner.run(sql)
    @id = food_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM challenge"
    challenges = SqlRunner.run( sql )
    result = challenges.map { |challenge| Challenge.new( challenge ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM challenge WHERE id=#{id}"
    challenges = SqlRunner.run( sql )
    result = Challenge.new( challenges.first )

    return result
  end

  def self.update( options )
    sql = "UPDATE challenge SET
    name='#{options['name']}',
    info='#{options['info']}',
    deal='#{options['deal']}',
    day='#{options['day']}',
    food_type='#{options['food_type']}'
    WHERE id='#{options['id']}'"
    SqlRunner.run( sql )
  end

  def self.destroy( id )
    sql = "DELETE FROM challenge WHERE id=#{id}"
    SqlRunner.run( sql )
  end

  def self.get_many(sql)
    challenges = SqlRunner.run(sql)
    result = challenges.map { |challenge| Challenge.new(challenge)}
    return result
  end


end


