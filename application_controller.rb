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
end