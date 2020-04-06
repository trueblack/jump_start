# ask user for count of numbers
puts "Hello user! Let's play a game. How many numbers would you like to enter?"
    userTurns = gets.chomp.to_i
# create an array to hold the numbers user will input
numbers = Array.new(userTurns)
# do the following userTurns number of times
# ask user for positive integer value
# save input as integer in a the array you created
userTurns.times do |i|
    puts "Please enter positive integer value ##{i+1}:"
        numbers[i]=gets.chomp.to_i
end
# go thru array and compare each value to the end value
puts "\nComparing to the final entered value, #{numbers[userTurns-1]}, some observations:\n" 
userTurns.times do |i|
    # if i < i-1 print to terminal that i is less than i-1
    if numbers[i] < numbers[userTurns-1]
        puts "The value at index #{i}, #{numbers[i]}, is less than the value at the final index, #{numbers[userTurns-1]}"
    # if i > i-1 print to terminal that i is greater than i-1
    elsif numbers[i] > numbers[userTurns-1]
        puts "The value at index #{i}, #{numbers[i]}, is greater than the value at the final index, #{numbers[userTurns-1]}"
    # if i == i-1 print to terminal that i is equal to i-1
    else
        puts "The value at index #{i}, #{numbers[i]}, is equal to the value at the final index, #{numbers[userTurns-1]}"
    end
end    
# print to the terminal: 
# the minimum value, the maximum value, the average value 
# determine the min
minimum = numbers[userTurns -1]
userTurns.times do |i|
    # if numbers[i] < minimum, set minimum to numbers[i]
    if numbers[i] < minimum
        minimum = numbers[i]
    end
end        
#determine the max
maximum = numbers[userTurns-1]
userTurns.times do |i|
    # if numbers[i] > maximum, set maximum to numbers[i]
    if numbers[i] > maximum
        maximum = numbers[i]
    end
end       
# calculate the average
average = 0.0
userTurns.times do |i|
    #add all values together
    average = average + numbers[i]
end
#divide the summed value by the number of elements in the array
average = average / userTurns
print "The minimum value in the array is #{minimum}.\n"    
print "The maximum value in the array is #{maximum}.\n"    
print "The average of all the values is #{average}."    