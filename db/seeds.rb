User.destroy_all
Joke.destroy_all
Comment.destroy_all
Vote.destroy_all

user = User.new
user.email = 'test@example.com'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.password = "valid_password"
user.password_confirmation = "valid_password"
user.save!


joke = user.jokes.create({body: "joke3"})
joke.comments.create({body: "that is soooo funny!!!", user_id: user.id})

vote = joke.votes.create({rating: true, user_id: user.id})

user.jokes.create([{body: "3 guys walk into a bar..."}, {body: "Why did the chicken.."}])