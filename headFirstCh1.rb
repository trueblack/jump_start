# prompt player to enter name
print "Hello User! Let's play a game! What is your name? "
userName = gets.chomp
# generate random number 1-100 and store for player to guess
solution = rand(1..100) 
# keep track of how many guesses, each guess: prompt w remaining #
puts "Ok #{userName}, I'm thinking of a  number from 1-100. Can you guess it?"
10.times do |i|
    print "You have #{10-i} guess(es) left! \n=> "
    userGuess = gets.chomp.to_i
    if userGuess > solution
        puts "Oops. Your guess was too large."
    elsif userGuess < solution
        puts "Oops. Your guess was too small."
    elsif userGuess == solution
        puts "Hey! Nice work #{userName}! You guessed my number in #{i} guesses."
        break
    else
        puts "Sorry. You weren't able to guess my number, #{solution}."
    end
end