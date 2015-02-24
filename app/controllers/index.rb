require 'sinatra'

get '/' do
  erb :index
end

get '/signup' do
  erb :signup
end

post '/signup' do
end

get '/login' do
  erb :login
end

post '/login' do
end

put '/' do
end

delete '/' do
end