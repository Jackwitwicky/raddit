class VotesController < ApplicationController
  def up_vote
    @link = Link.find(params[:format])
    @vote = @link.votes.create(like: "1", user_id: current_user.id)

    redirect_to :back
  end

  def down_vote
    @link = Link.find(params[:format])
    @vote = @link.votes.create(dislike: "1", user_id: current_user.id)

    redirect_to :back
  end
end
