# take user input for two positive integers
puts "Hello user! This is a short program that evaluates if 
2 values are greater, lesser, or equal to one another."

puts "Please enter a positive integer value: "
x = gets.to_i
puts "Now enter a second positive integer value, please: "
y = gets.to_i

if x==y
    print "#{x} equals #{y}."
elsif x<y
    print "#{x} is less than #{y}."
else x>y
    print "#{x} is greater than #{y}."
end
puts "\n\nThanks for using this short program, user!"