# ask user to input a positive integer value [3x]
puts "hello user! please enter a positive integer value: "
usernumber1 = gets
puts "please enter a SECOND positive integer value, user: "
usernumber2 = gets
puts "now enter a THIRD positive integer value, please: "
usernumber3 = gets
# convert user input to an integer and save the value in a variable
usernumber1 = usernumber1.to_i
usernumber2 = usernumber2.to_i
usernumber3 = usernumber3.to_i
# add 20 to each number and print value to the console
puts "Adding 20 to each of your numbers yields #{usernumber1 + 20}, #{usernumber2 + 20}, and #{usernumber3 + 20}. Thank you, user!"