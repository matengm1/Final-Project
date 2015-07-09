require 'bundler'
Bundler.require

require_relative './models/submit.rb'

class MyApp < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post '/submit' do
    @user_answer = Question.new(params["question"])
    erb :submit
  end
end