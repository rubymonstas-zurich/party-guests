require 'sinatra'
require 'byebug'

require './guest.rb'

get '/' do
  'Hello world!'
end

get '/party' do
  @guests = Guest.load_guests
  erb :party
end

post '/party/guests' do
  Guest.load_guests

  guest = Guest.new(
    params['guest_name'],
    params['guest_number_of_friends'],
    params['guest_time_of_arrival']
  )

  guest.add_to_list

  redirect '/party'
end

get '/example_form' do
  erb :example_form
end

post '/example_form' do
  erb :form_result
end
