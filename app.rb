require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end
set :bind, '0.0.0.0'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/team/:username' do
  binding.pry
  @usernames = [ 'ssaunier', 'Papillard' ]
  erb :index
end