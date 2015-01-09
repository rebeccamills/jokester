class Vote < ActiveRecord::Base
	belongs_to :joke
	belongs_to :user
	validates_presence_of :rating
end