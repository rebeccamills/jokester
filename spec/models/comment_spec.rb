require 'rails_helper'

describe Comment do
	describe "::new" do	
		it "can be instantiated" do
			comment = Comment.new
			expect(comment.class).to eq(Comment)
		end
	end
	it { should belong_to(:user)}
	it { should belong_to(:joke)}
	it { should validate_presence_of(:body)}
end