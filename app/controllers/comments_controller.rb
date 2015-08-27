class CommentsController < ApplicationController

  def new

  end

  def create
    @link = Link.find(params[:link_id])

    @comment = @link.comments.new(comment_params)
    @comment.user = current_user
    @comment.save

    flash[:success] = "Your comment has been saved."
    redirect_to :back
  end

  def destroy
    @link = Link.find(params[:link_id])

    @comment = @link.comments.find(params[:id])
    @comment.destroy

    flash[:success] = "Your comment has been deleted."
    redirect_to :back
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

end
