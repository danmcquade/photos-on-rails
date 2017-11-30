class UsersController < ApplicationController

  def frontpage
    @photos = Photo.order("RANDOM()").limit(9)
  end

  def index
    @users = User.all.order("username ASC")
  end

  def show
    @user = User.find(params[:id])
  end

  def favorites
    @user = current_user
    @photos = @user.favorites
  end

end
