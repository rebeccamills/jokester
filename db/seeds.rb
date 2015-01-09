user = User.new
user.email = 'test@example.com'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.password = "valid_password"
user.password_confirmation = "valid_password"
user.save!

# Joke.create([{text: "3 guys walk into a bar..."}, {text: "Why did the chicken.."}])