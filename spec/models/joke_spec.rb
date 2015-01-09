require 'rails_helper'

describe Joke do
	describe "::new" do	
		it "can be instantiated" do
			joke = Joke.new
			expect(joke.class).to eq(Joke)
		end
	end
	it { should have_many(:votes)}
	it { should belong_to(:user)}
	it { should validate_presence_of(:body)}
	it { should validate_presence_of(:vote_count)}
end