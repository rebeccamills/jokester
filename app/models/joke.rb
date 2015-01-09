class Joke < ActiveRecord::Base
	has_many :votes
	has_many :comments, dependent: :destroy
	belongs_to :user
	validates_presence_of :body 
end