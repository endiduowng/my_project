class CommentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @comment = @rooms.comments.include(:user)
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      @room = @comment.room
      respond_to :js
    else
      flash[:alert] = "Something went wrong..."
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @room = @comment.room
    respond_to :js
  end

  def update
    @comment = Comment.find(params[:id])
    @room = @comment.room
    if @comment.update(comment_params)
      respond_to :js
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @room = @comment.room
    if @comment.destroy
      respond_to :js
    else
      flash[:alert] = "Something went wrong"
    end
  end

  def cancel
    @comment = Comment.find(params[:id])
    @room = @comment.room
    respond_to :js
  end

  private
  def comment_params
    params.required(:comment).permit(:user_id, :room_id, :content)
  end
end
