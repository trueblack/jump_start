# ask user for count of numbers (how many times)
puts "Hello user! Let's play a game. How many numbers would you like to enter?"
userTurns = gets.chomp.to_i
# have user input positive integer value
i = 0
while i < userTurns
    puts "Please enter positive integer value ##{i+1}:"
    userNumber = gets.chomp.to_i
    # if input value is %3=0 display message, otherwise display message
    if (userNumber % 3) == 0
        puts "#{userNumber} is divisible by 3!"
    else
        puts "#{userNumber} is not divisible by 3, sadly!"
    end    
    i += 1
end



