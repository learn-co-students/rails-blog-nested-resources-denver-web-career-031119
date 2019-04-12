class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)

    if @comment.errors.any?
      render :new
    else
      redirect_to @comment.post
    end
  end

  def show
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end


end
