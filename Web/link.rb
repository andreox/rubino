require 'rubygems'
require 'sinatra'

get '/' do 

  <<-HTML
		<a href="/action">Link</a>
	HTML

end

get '/action' do

	"You are in the /action page!"

end
