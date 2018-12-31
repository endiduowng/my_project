class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @like = current_user.likes.build(like_params)
    @room = @like.room
    if @like.save
      @is_liked = @like
      respond_to :js
    else
      flash[:alert] = "Something went wrong..."
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @room = @like.room
    if @like.destroy
      respond_to :js
    else
      flash[:alert] = "Something went wrong..."
    end
  end

  private
  def like_params
    params.permit(:user_id, :room_id)
  end
end
