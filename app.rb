require 'sinatra'
require 'byebug'

require './guest.rb'
require './profile_repository.rb'

get '/' do
  erb :home
end

get '/profiles/:name' do
  @profile = ProfileRepository.find_profile(params[:name])

  if @profile
    erb :profile
  else
    erb :profile_not_found
  end
end

get '/house' do
  erb :house
end
