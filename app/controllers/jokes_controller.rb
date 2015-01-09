class JokesController < ApplicationController
	before_action :authenticate_user!
  def index
  	@jokes = Joke.all
  end

  def upvote
  	@joke = Joke.find(params[:id])
  	@joke.upvote_by current_user
  	redirect_to jokes_path
  end

  def downvote
  	@joke = Joke.find(params[:id])
  	@joke.downvote_by current_user
  	redirect_to jokes_path
  end
end