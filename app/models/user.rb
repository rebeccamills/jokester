class User < ActiveRecord::Base
	has_many :votes
	has_many :jokes
	has_many :friends, :through => :friendships
	has_many :friendships


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
