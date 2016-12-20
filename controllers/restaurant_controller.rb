require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative('../models/challenge')
require_relative('../models/restaurant')



# get all restaurants
get '/restaurants' do
  @restaurants = Restaurant.all()
  erb(:"restaurants/index")
end

# new restaurants form
get '/restaurants/new' do
  erb(:"restaurants/new")
end

# actually make a restaurants
post '/restaurants' do
  @restaurant = Restaurant.new(params)
  @restaurant.save()
  erb(:"restaurants/create")
end

# get / find restaurants by ID
# show
get '/restaurants/:id' do
  id = params[:id]
  @restaurant = Restaurant.find(id)
  erb(:"restaurants/show")
end

# get edit restaurants form
get '/restaurants/:id/edit' do
  @restaurant = Restaurant.find(params[:id])
  erb(:"restaurants/edit")
end

# actually update a restaurants by ID put
post '/restaurants/:id' do
  Restaurant.update(params)
  redirect to "/restaurants/#{params[:id]}"
end

# delete a restaurants by ID 
# delete
post '/restaurants/:id/delete' do
  Restaurant.destroy( params[:id])
  erb(:"restaurants/delete")
end

# show a challenge for a particular restaurant
get '/restaurants/:id/challenges' do
  @restaurant = Restaurant.find(params[:id])
  @challenges = @restaurant.challenges()
  erb(:"restaurants/search")
end



