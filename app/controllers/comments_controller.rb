class CommentsController < ApplicationController

  def create
    @comment = Comment.create(params.require(:comment).permit(:content, :post_id, :user_id))
  end

end
