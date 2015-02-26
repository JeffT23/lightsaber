require 'sinatra'

get '/' do
 <<-HTML
<p>
Welcome to my LightSaber.  Prepare to be amazed.
</p>
<p>
<form action="users/new" method="post">
	<input type="text" name="name" placeholder="name">
	<input type="password" name="password" placeholder="password">
	<input type="submit">
</form>
</p>

<a href='/sound'>Hear my swooshy sound!</a>
  HTML
end
get '/sound' do
  <<-HTML
<audio controls>
  <source src="http://soundbible.com/grab.php?id=19&type=wav" type="audio/wav">
  <source src="http://soundbible.com/grab.php?id=19&type=mp3" type="audio/mpeg">
Your browser does not support the audio element.
</audio>
  HTML
end

get '/users/:name' do
	@name = params[:name]
	<<-HTML
	<%=@name%>
	HTML
end


post '/users/new' do
	new_user = User.new(name: params[:name], password: params[:password])
	redirect "/users/#{new_user.name}"
end

put '/users/:name' do
end

delete '/users/:name' do 
end



