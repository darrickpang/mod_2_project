class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def edit
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to picture_path(@comment.picture_id)
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :picture_id, :user_id)
    end
end