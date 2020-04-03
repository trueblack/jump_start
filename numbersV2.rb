# ask user for positive integer value and convert the input to an integer
puts "hello user! this short program evaluates 
if numbers are greater than or equal to 20. 
please enter a positive integer value: "
usernumber1 = gets.to_i
# evaluate if user number is >= 20, inform user of result
if usernumber1 >= 20
    puts "#{usernumber1} is greater than or equal to 20!"
else 
    puts "#{usernumber1} is less than 20."
end      
# do this 3x    
puts "please enter a SECOND positive integer value, user: "
usernumber2 = gets.to_i
# evaluate if user number is >= 20, inform user of result
if usernumber2 >= 20
    puts "#{usernumber2} is greater than or equal to 20!"
else 
    puts "#{usernumber2} is less than 20."
end       
puts "now enter a THIRD positive integer value, please: "
usernumber3 = gets.to_i
if usernumber3 >= 20
    puts "#{usernumber3} is greater than or equal to 20!"
else 
    puts "#{usernumber3} is less than 20."
end       

puts "Thanks for using this program, user."