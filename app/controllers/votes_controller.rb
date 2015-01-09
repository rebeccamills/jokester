class VotesController < ApplicationController

  before_action :authenticate_user!

  def upvote
  	joke = Joke.find(params[:joke_id]) 
  	vote = Vote.new({rating: 1, user_id: current_user.id, joke_id: joke.id})
  	if vote.save 
  		redirect_to "/jokes"
  	end
  end

  def downvote
  	joke = Joke.find(params[:joke_id]) 
  	vote = Vote.new({rating: 2, user_id: current_user.id, joke_id: joke.id})
  	if vote.save 
  		redirect_to "/jokes"
  	end
  end
end



