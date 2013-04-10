require 'rubygems'
require 'sinatra'

def dec_to_bin(dec) 

	bin = Array.new
	
	while dec > 0

		if dec % 2 == 0 then

			dec = dec / 2
			bin.insert( 0 , 0 )
			next

		end

		dec = dec / 2
		bin.insert( 0 , 1 )

	end

	return bin

end

def bin_to_dec(bin)

	abin = bin.split(//)
	abin.map! { |i| i.to_i }
	d = 0

	while abin.length > 0

		d = d + ( abin.first * ( 2 ** abin.length ) )
		abin.shift

	end

	return d/2

end


get '/' do 

	<<-HTML
		<form action='/result' method="POST">
			Inserisci numero binario
			<input type="text" name="bin"/><br>
			Inserisci numero decimale
			<input type="text" name="dec"/><br>
			<input type="submit" value="Submit"/>
		</form>
	HTML

end

post '/result' do

	if params[:bin] == '' then
		"#{dec_to_bin(params[:dec].to_i)}"
	end

	if params[:dec] == '' then
		"#{bin_to_dec(params[:bin])}"
	end

end

