class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def edit
  end

  def show
  end

  def create
  	@user = User.create(user_params)
  	flash[:notice] = "New account created"
  	redirect_to users_path(@user)
  end

  def update
  	@user.update(user_params)
  	flash[:notice] = "user updated"
  	redirect_to users_path(@user)
  end

  private
  
  def set_user
  	@user = User.find(params[:id])
  end

  def user_params
  	params.require(:user).permit(:name, :email, :password)
  	
  end

end
