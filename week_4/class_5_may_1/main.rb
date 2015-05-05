require "sinatra"
require "sinatra/activerecord"
require "bundler/setup"
require "rack-flash"
require "./models"

configure(:development){set :database, "sqlite3:seconddatabase.sqlite3"}

set :sessions, true
use Rack::Flash, sweep: true

def current_user
	session[:user_id] ? User.find(session[:user_id]) : nil
end


post '/follow/:id' do
	@relationship = Relationship.new(follower_id: current_user.id, follower_id: params[:id])
	if @relationship.save
		Flash[:notice] = "successfully followed"
	else
		Flash[:alert] = "you are not following this user"
end
	redirect to('/')

get '/users' do
	@users = User.all
	erb :index
end

get '/users/:id' do
	@user = User.find(params[:id])
	erb :show
end





