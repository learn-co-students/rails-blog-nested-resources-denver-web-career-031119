require 'pry'

class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create(comment_params)
    @comments = Comment.all
    redirect_to post_path(@post)
  end



  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
