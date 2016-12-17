
require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative('../models/restaurants')



# get all restaurants
get '/restaurants' do
  @restaurants = Restaurants.all()
  erb(:"restaurants/index")
end

# new restaurants form
get '/restaurants/new' do
  erb(:"restaurants/new")
end

# actually make a restaurants
post '/restaurants' do
  @restaurants = Restaurants.new(params)
  @restaurants.save()
  erb(:"restaurants/create")
end

# get / find restaurants by ID
# show
get '/restaurants/:id' do
  id = params[:id]
  @restaurants = Restaurants.find(id)
  erb(:"restaurants/show")
end

# get edit restaurants form
get '/restaurants/:id/edit' do
  @restaurants = Restaurants.find(params[:id])
  erb(:"restaurants/edit")
end

# actually update a restaurants by ID put
post '/restaurants/:id' do
  Restaurants.update(params)
  redirect to "/restaurants/#{params[:id]}"
end

# delete a restaurants by ID 
# delete
post '/restaurants/:id/delete' do
  Restaurants.destroy( params[:id])
  redirect to ('/restaurants')
end

