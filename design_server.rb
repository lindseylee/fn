require 'sinatra'
# require 'sinatra/json'
require 'pry'

# require_relative 'lib/sms.rb'

set :bind, '0.0.0.0'
set :port, 9494

get '/' do
  erb :index
end

get '/design' do
  @message = "im data"
  erb :index
end

get '/design/home' do
  erb :home
end

post '/sign_in' do
  @user = true
  if @user
    redirect to '/design/home'
  end
end

post '/design/home' do
  puts params
  erb :index
end

get '/design/question' do
  erb :question
end

post '/design/question' do
  erb :question
end

# post '/sign_in' do
#   params
#   @user = true
#   # result = SMS.script.sign_in(params)
#   # if result[:success?]
#   #   user = result[:user]
#   #   @username = user.username
#   #   @user_id = user.id
#   #   session[:username] = user.username
#   #   redirect '/design'
#   # else
#   #   @error = result[:error]
#   #   erb :signin_error
#   # end
#   result = SMS.script.sign_in(params)
#   if result[:success?]
#     user = result[:user]
#     @username = user.username
#     @user_id = user.id
#     session[:username] = user.username
#     redirect '/design/home'
#   else
#     @error = result[:error]
#     erb :signin_error
#   end
#   redirect to '/design/home'
# end

get '/design/home' do
  @user = true
  erb :home
end

get '/design/results' do
  erb :results
end

get '/design/qualities' do
  # data call here to actually get them
  @qualities = ["sassy", "chic", "cature", "hip"]
  @female = true
  erb :qualities
end

get '/api/qualities' do
  @qualities = ["sassy", "chic", "cature", "hip"]
  json @qualities
end
