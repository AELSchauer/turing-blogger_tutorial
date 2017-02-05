class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    binding.pry
    @comment.save

    redirect_to article_path(@comment.article)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter_name, :body)
  end
end