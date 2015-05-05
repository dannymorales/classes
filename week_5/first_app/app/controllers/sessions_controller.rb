class SessionsController < ApplicationController
  
  def new
  end

  def create
  	@user = User.find_by(email: params[:email])
  	if @user and @user.password == params[:password]
  		session[:user_id] = @user.user_id
  		flash[:notice] = "sucessfully logged in"
  		redirect_to user_path(@user)
  	else
  		flash[:aler] = "incorrect password or email"
  		render :new
  end

  def destroy
  	session
  	
  end
end
