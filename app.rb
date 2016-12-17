require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('controllers/challenge_controller')


get '/' do
  erb( :index )
end