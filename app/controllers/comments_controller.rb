class CommentsController < ApplicationController

  def new
  end

  def create
    if !current_user
      flash[:alert] = "Not authorized to create a comment."
    else
      @photo = Photo.find(params[:photo_id])
      @comment = @photo.comments.create(comment_params.merge(user: current_user))
      flash[:notice] = "Comment successfully posted."
    end
    redirect_to user_photo_path(current_user, @photo)
  end

  def edit
  end

  def update
  end

  def destroy
    @photo = Photo.find(params[:photo_id])
    @comment = Comment.find(params[:id])
    if @comment.user != current_user
      flash[:alert] = "Not authorized to delete this comment."
    else
      @comment.destroy
      flash[:notice] = "Comment successfully deleted."
    end
    redirect_to user_photo_path(current_user, @photo)
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
