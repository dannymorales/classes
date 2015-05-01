require "sinatra"
require "mandrill"

get '/' do
	erb :index
end

get '/contact' do
	# @title = "Contact"
	erb :contact
end

post '/contact' do
	puts params.inspect
	user = params["fname"]
	email = params["email"]
	user_message = params["message"]
	puts "sending email"

	m = Mandrill::API.new
	message = {  
	 :subject=> "Hello from the danny",  
	 :from_name=> "Danilo Morales",  
	 :text=>"Hi message, how are you?",  
	 :to=>[  
	   {  
	     :email=> email,  
	     :name=> user 
	   }  
	 ],  
	 :html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",  
	 :from_email=>"danny@gadaproductions.com"  
	}  
	sending = m.messages.send message  
	puts sending
	redirect to('/thanks')
end

get '/thanks' do
	erb :thanks
end


get '/multimedia' do
	erb :multimedia
end