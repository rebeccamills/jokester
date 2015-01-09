class Joke < ActiveRecord::Base
	has_many :votes
	has_many :comments, dependent: :destroy
	belongs_to :user
	validates :body, :vote_count, presence: true 
	def set_vote_count
		vote_count = 0
		@votes = self.votes
		@votes.each do |vote|
			if vote.rating
				vote_count += 1
			else
				vote_count -= 1
			end
		end
	end

end