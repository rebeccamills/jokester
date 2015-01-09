class Joke < ActiveRecord::Base
	has_many :votes
	has_many :comments, dependent: :destroy
	belongs_to :user
	validates :body, :vote_count, presence: true 
end