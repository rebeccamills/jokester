class Joke < ActiveRecord::Base
	acts_as_votable
	has_many :comments, dependent: :destroy
	belongs_to :user
	validates :body, presence: true 

	def score
		self.get_upvotes.size - self.get_downvotes.size
	end
	# def set_vote_count
	# 	vote_count = 0
	# 	@votes = self.votes
	# 	@votes.each do |vote|
	# 		if vote.rating
	# 			vote_count += 1
	# 		else
	# 			vote_count -= 1
	# 		end
	# 	end
	# end

end