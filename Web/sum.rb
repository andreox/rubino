require 'rubygems'
require 'sinatra'

get '/' do 
  <<-HTML
		<form action='/' method ="POST">
			Put a number
			<input type="text" name="n1"/><br>
			Put an other number
			<input type="text" name="n2"/><br>
			<input type="submit" value="Do the operation!"/>
		</form>
	HTML

end

post '/' do

	@n1 = params[:n1].to_i
	@n2 = params[:n2].to_i

	"Result : #{@n1+@n2}"

end
