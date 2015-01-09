class VotesController < ApplicationController

  before_action :authenticate_user!

  def upvote
  	joke = Joke.find(params[:joke_id])
  	vote = joke.votes.new({rating: true, user_id: current_user.id})
  end

  def downvote
  	joke = Joke.find(params[:joke_id]) 
  	vote = Vote.new({rating: false, user_id: 3, joke_id: joke.id})
  	if vote.save 
  		redirect_to "/jokes"
  	end
  end
end



