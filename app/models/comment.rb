class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :joke
	validates_presence_of :body
end