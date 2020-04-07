# create a hash, with one key-value pair consisting of random numbers
# generate 5 random numbers and assign them to the hash 
first_hash = {
    random_numbers: []
}
5.times do |i|
    randNum = rand(12..21)
    first_hash[:random_numbers][i] = randNum
end
# add a second key_vaule pair to the first hash called user input
first_hash[:user_input] = []
# ask user for 5 positive integer values from 12-21 
puts "Please provide five integer values from 12 to 21, inclusive:\n"
5.times do |i|
    puts "What's number #{i+1}?"
    first_hash[:user_input][i] = gets.chomp.to_i
end
puts "#{first_hash[:random_numbers]}"
puts "#{first_hash[:user_input]}"
# create a second hash
# use the values of the first hash as the keys of this one
# 
second_hash = {

}
5.times do |i|
    numberValue = first_hash[:random_numbers][i]
    if !second_hash["#{numberValue}"] 
        second_hash["#{numberValue}"] = {
            randNum: 1,
            userNum: 0
        }
    else    
        second_hash["#{numberValue}"][:randNum] += 1  
    end
    numberValue = first_hash[:user_input][i]
    if !second_hash["#{numberValue}"] 
        second_hash["#{numberValue}"] = {
            randNum: 0,
            userNum: 1
        }
    else
        second_hash["#{numberValue}"][:userNum] += 1    
    end
end
# ask user to supply 3 numbers, share the number of times 
# it appeared in the data set, based on the first and then the second hash
3.times do
    puts "Give me a number you want information about: "
        infoNum = gets.chomp.to_i
    puts "Using only the first hash: "
    if first_hash[:random_numbers].count(infoNum) == 0
        puts "The number, #{infoNum} did not show up in the randomly generated numbers."
    else    
        puts "The number, #{infoNum} shows up #{first_hash[:random_numbers].count(infoNum)} time(s) in the randomly generated numbers."
    end
    if first_hash[:user_input].count(infoNum) == 0
        puts "The number, #{infoNum} was not provided by the user."
    else    
        puts "The number, #{infoNum} was provided #{first_hash[:user_input].count(infoNum)} time(s) by the user."
    end
    puts "Using only the second hash: "
    if !second_hash["#{infoNum}"]
        puts "The number, #{infoNum} did not show up in the randomly generated numbers."
        puts "The number, #{infoNum} was not provided by the user."
    else    
        puts "The number, #{infoNum} shows up #{second_hash["#{infoNum}"][:randNum]} time(s) in the randomly generated numbers."
        puts "The number, #{infoNum} was provided #{second_hash["#{infoNum}"][:userNum]} time(s) by the user."
    end
end