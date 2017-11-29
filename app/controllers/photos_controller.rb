class PhotosController < ApplicationController

  def show
    @user = User.find(params[:user_id])
    @photo = Photo.find(params[:id])
    if current_user
      @comment = Comment.new
    end
  end

  def new
    @user = User.find(params[:user_id])
    @photo = Photo.create
  end

  def create
    @user = User.find(params[:user_id])
    if current_user
      @photo = @user.photos.create(photo_params.merge(user: current_user))
      redirect_to [@user, @photo]
    else
      flash[:alert] = "Not authorized to upload photo."
      redirect_to root_path
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @photo = Photo.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @photo = Photo.find(params[:id])

    if @photo.user == current_user
      @photo.update(photo_params)
    else
      flash[:alert] = "Not authorized to edit this photo."
    end
    redirect_to [@user, @photo]
  end

  def destroy
    @user = User.find(params[:user_id])
    @photo = Photo.find(params[:id])

    if @photo.user == current_user
      @photo.destroy
    else
      flash[:alert] = "Not authorized to delete photo."
    end
    redirect_to @user
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :url)
  end


end
