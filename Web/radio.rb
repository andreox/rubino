require 'rubygems'
require 'sinatra'

get '/' do

	<<-HTML
	 <form action='/' method="POST">
		 Sdeghede?<br>
		 <input type="radio" name="answer" value="yes"/>Yes<br>
		 <input type="radio" name="answer" value="no"/>No<br>
		 <input type="submit" value="Submit!">
	 </form>
	HTML

end

post '/' do

	if params[:answer] == 'yes' then

		"Correct answer! You're gay :D"

	end

	if params[:answer] == 'no' then

		"WHAT ARE YOU SAYIN' MOTHERFUCKER"

	end

	if params[:answer] == '' then

		"Select a Radio Button"

	end

end
