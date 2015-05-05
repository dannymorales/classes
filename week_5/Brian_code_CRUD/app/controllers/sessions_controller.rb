class SessionsController < ApplicationController
  
  def new
  end

  def create
  	@user = User.find_by(email: params[:email])
  	if @user and @user.password == params[:password]
  		session[:user_id] = @user.id
  		flash[:notice] = "Succesfully logged in."
  		redirect_to @user
  	else
  		flash[:alert] = "Incorrect password or email."
  		render :new
  	end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out."
    redirect_to root_path
  end
end
