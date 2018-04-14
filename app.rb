require 'sinatra'
require 'sinatra/reloader'
require 'chuck_norris'
require_relative './staff.rb'

get '/' do
  erb :index
end

get '/contact' do
  erb :contact
end

get '/staff' do
  erb :staff
end


joke = ChuckNorris::JokeFinder.get_joke
chuck_joke = joke.joke
@@michael = Staff_Member.new('Michael', '/images/michael.jpg', 'Regional Manager', chuck_joke)
@@asian_jim = Staff_Member.new('Asian Jim', '/images/asian_jim.jpg', 'Accountant', chuck_joke)
@@other_stephanie = Staff_Member.new('Other Stephanie', '/images/other_stephanie.jpg', 'Whatever Original Stephanie did', chuck_joke)
@@wizard = Staff_Member.new('Wizard', '/images/wizard.jpg', 'In house magician', chuck_joke)

get '/staff/:name' do
  if params[:name] == 'michael'
    @staff = @@michael
    erb :staffpage
  elsif params[:name] == 'asian-jim'
    @staff = @@asian_jim
    erb :staffpage
  elsif params[:name] == 'other-stephanie'
    @staff = @@other_stephanie
    erb :staffpage
  elsif params[:name] == 'wizard'
    @staff = @@wizard
    erb :staffpage
  else
    redirect '/error/'
  end
end
