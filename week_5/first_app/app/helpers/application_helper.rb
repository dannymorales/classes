module ApplicationHelper
	def current_user
		session[:user_id] ? User.find(session[session_id]) : nil	
	end
end
