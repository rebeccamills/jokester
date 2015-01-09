class JokesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_joke, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  def index
  	@jokes = Joke.all
  end

  def show
  end

  def edit
  end

  def new
  	@joke = Joke.new
  end

  def create
  	@joke = current_user.jokes.build(joke_params)
  	if @joke.save
  		redirect_to joke_path(@joke)
  	else
  		render :new
  	end
  end

  def update
  	@joke.update(joke_params)
  	if @joke.save
  		redirect_to joke_path(@joke)
  	else
  		render :edit
  	end
  end
  def destroy
  	@joke.destroy
  	redirect_to jokes_path
  end

  def upvote
  	@joke.upvote_by current_user
  	redirect_to jokes_path
  end

  def downvote
  	@joke.downvote_by current_user
  	redirect_to jokes_path
  end

  private
  def joke_params
  	params.require(:joke).permit(:body)
  end

  def set_joke
  	@joke = Joke.find(params[:id])
  end
end