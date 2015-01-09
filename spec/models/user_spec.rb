require 'rails_helper'

describe User do
	describe "::new" do	
		it "can be instantiated" do
			user = User.new
			expect(user.class).to eq(User)
		end
	end
end
