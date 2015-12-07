require 'sinatra'
require 'byebug'

require './profile_repository.rb'

get '/' do
  erb :home
end

# TODO Implement the route for /house here and render the correct template.

get '/profiles/:name' do
  # TODO Implement the profile page here.
end
