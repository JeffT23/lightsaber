require 'sinatra'

get '/' do
  erb :index
end

#   <<-HTML
# <p>
# Welcome to my LightSaber.  Prepare to be amazed.
# <p>
# <a href='/sound'>Hear my swooshy sound!</a>
#   HTML
# end

get '/users/:name' do
	@name = params[:name]
	erb :user_info
end



# get '/sound' do
#   <<-HTML
# <audio controls>
#   <source src="http://soundbible.com/grab.php?id=19&type=wav" type="audio/wav">
#   <source src="http://soundbible.com/grab.php?id=19&type=mp3" type="audio/mpeg">
# Your browser does not support the audio element.
# </audio>
#   HTML
# end

post '/users/new' do
	new_user = User.new(name: params[:name], password: params[:password])
	redirect "/users/#{new_user.name}"
end

put '/users/:name' do
end

delete '/users/:name' do 
end



