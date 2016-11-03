# Q0: Why is this error being thrown?
Pokemon controller are not defined

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear?
They are appearing based on a seed which populates the database. Common factor: we have four pre-made pokemons.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a "Throw a Pokeball" button that will capture the pokemon when clicked on. "capture_path(id: @pokemon)" calls the capture method in pokemon

# Question 3: What would you name your own Pokemon?
El

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in trainer_path(id: @pokemon.trainer). It needs the pokemon trainer's id to display the right page

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It renders the error message in application.html.erb and displays it in _messages.html.erb for invalid pokemon model by passing the key :error into flash hash.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
