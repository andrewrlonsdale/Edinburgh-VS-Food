require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative('../models/challenge')



# get all challenges
get '/challenges' do
  @challenges = Challenge.all()
  erb(:"challenges/index")
end

# new challenge form
get '/challenges/new' do
  erb(:"challenges/new")
end

# actually make a challenge
post '/challenges' do
  @challenge = Challenge.new(params)
  @challenge.save()
  erb(:"challenges/create")
end

# get / find challenge by ID
# show
get '/challenges/:id' do
  id = params[:id]
  @challenge = Challenge.find(id)
  erb(:"challenges/show")
end

# get edit challenge form
get '/challenges/:id/edit' do
  @challenge = Challenge.find(params[:id])
  erb(:"challenges/edit")
end

# actually update a challenge by ID put
post '/challenges/:id' do
  Challenge.update(params)
  redirect to "/challenges/#{params[:id]}"
end

# delete a challenge by ID 
# delete
post '/challenges/:id/delete' do
  Challenge.destroy( params[:id])
  redirect to ('/challenges')
end

