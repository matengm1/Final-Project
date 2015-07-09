require 'bundler'
Bundler.require

require_relative './models/cat.rb'

class MyApp < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  get '/cat' do
    erb :cat
  end
  
  post '/cats' do
    @users_cat = Cat.new(params["name"], params["breed"], params["age"])
    erb :cats
  end
end