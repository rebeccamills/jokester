class Vote < ActiveRecord::Base

	before_save :check_vote,  :update_vote


	belongs_to :joke
	belongs_to :user
	# validates_presence_of :rating

	def check_vote
		vote = Vote.find_by(user_id: self.user_id)
	  	if vote == nil
			vote = Vote.new
		end
	 	if self.rating == vote.rating
	  		false
	  	end
	end

	def update_vote
		vote = Vote.find_by(user_id: self.user_id)
		if vote == nil
			vote = Vote.new
		end
		if self.rating != vote.rating
			if self.rating == 1
				self.rating = 2
			else
				self.rating = 1
			end
		end
	end

	private
	def set_vote_to_nil
		
	end




	# def check_vote
	# 	vote = Vote.find_by(user_id: self.user_id)
	# 	if vote == nil 
	# 		vote = Vote.new
	# 	end
	# 	if vote.user_id == self.user_id 
	# 		false 
	# 	elsif self.rating == vote.rating 
	# 		false
	# 	else
	# 		true
	# 	end
	# end
end