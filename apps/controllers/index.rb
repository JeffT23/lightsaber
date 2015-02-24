require 'sinatra'

get '/' do
 @message = "Hello my name is Jeff!"
  erb :index
end