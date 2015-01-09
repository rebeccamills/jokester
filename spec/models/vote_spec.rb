require 'rails_helper'

describe Vote do
	describe "::new" do	
		it "can be instantiated" do
			vote = Vote.new
			expect(vote.class).to eq(Vote)
		end
	end
	it { should belong_to(:user)}
	it { should belong_to(:joke)}
	it { should validate_presence_of(:rating)}
end