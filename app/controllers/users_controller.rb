class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def show
  	@user = User.find(params[:id])
  	@titre = "Profile"
  end
end
