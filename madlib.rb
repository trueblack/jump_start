# accept up to 10 parts of speech from user
puts " Wanna play Madlibs? \n (gonna pretend you said yes) \n Enter words at the prompts below to play! \n" 
puts "[noun]: "
# chomp removes the \n that is captured by a gets command
noun1 = gets.chomp
puts "[verb ending in -ed]: "
verb1 = gets.chomp
puts "[noun]: "
noun2 = gets.chomp
puts "[noun]: "
noun3 = gets.chomp
puts "[verb]: "
verb2 = gets.chomp
puts "[color]: "
color1 = gets.chomp
puts "[adjective]: "
adjective1 = gets.chomp
puts "[adjective]: "
adjective2 = gets.chomp
puts "[plural noun]: "
noun4 = gets.chomp
puts "[verb ending in -s]: "
verb3 = gets.chomp
# output consisting of a paragraph with the user's input substituted
# using string interpolation to put our variables in this restaurant review
puts "\n \n Here's a Madlibs! \n \nUnsuccessful experiments with #{noun1} lattes inspired the menu’s crowd-pleaser: 
french toast #{verb1} with either #{noun2} or #{noun3}. The former’s #{color1}-crunchy surface may #{verb2} Instagram,
but those #{color1}, #{adjective1} flakes yield a surprisingly #{adjective2} flavor on thick slices of cider-spiked
whole wheat from Macrina—a french toast more nuanced than eggy. 
That’s just one of many #{noun4} in this Ballard dining room, which #{verb3} like a meticulous coffee shop 
that happens to serve hella fun food. "