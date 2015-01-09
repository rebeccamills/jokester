require 'rails_helper'

describe User do
	describe "::new" do	
		it "can be instantiated" do
			user = User.new
			expect(user.class).to eq(User)
		end
	end
	it { should have_many(:votes)}
	it { should have_many(:jokes)}
	it { should have_many(:friendships)}
	it { should have_many(:friends)}
end
