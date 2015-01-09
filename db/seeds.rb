User.destroy_all
Joke.destroy_all
Comment.destroy_all


user = User.new
user.email = 'test@example.com'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.password = "valid_password"
user.password_confirmation = "valid_password"
user.save!

user1= User.new
user1.email = 'bob@bob.com'
user1.encrypted_password = '#$taawktljasktlw4aaglj'
user1.password = "valid_password"
user1.password_confirmation = "valid_password"
user1.save!



joke = user.jokes.create({body: "joke3"})
joke.comments.create({body: "that is soooo funny!!!", user_id: user.id})

user.jokes.create([{body: "3 guys walk into a bar..."}, {body: "Why did the chicken.."}])