require 'bundler'
Bundler.require

require_relative './models/submit.rb'

class MyApp < Sinatra::Base
  
  get '/' do
    erb :question_ask
  end
  
  post '/submit' do
    @user_answer = Question.new(params["question"])
    erb :question_submit
  end
  
  post '/yes' do
    binding.pry
    erb :question_submit
  end
  post '/no' do
    erb :question_submit
  end
end