require 'sinatra'
require 'sinatra/reloader'
require 'chuck_norris'

get '/' do
  erb :index
end

get '/contact' do
  erb :contact
end

get '/staff' do
  erb :staff
end

get '/staff/:id' do
  joke = ChuckNorris::JokeFinder.get_joke
  michael = Staff_Member.new('michael', './public/images/michael.jpg', joke)
  if params[:id] == 'michael'

  end
end
