module VotesHelper
  def up_vote(link)
    @link = Link.find(link.id)
    @vote = @link.votes.create(like: "1", user_id: current_user.id)
  end

  def down_vote(link)
    @link = Link.find(link.id)
    @vote = @link.votes.create(dislike: "1", user_id: current_user.id)
    session[:previous_article_page] = request.env['HTTP_REFERER']
  end
end
