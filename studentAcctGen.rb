# make 3 arrays, student names, student ids, student emails
studentNames = []
studentIds = []
studentEmails = []
# write a times loop that asks the user to enter 5 first and last names
# store in studentName array in all uppercase
5.times do |i|
    puts "Please enter full names (first and last) for ##{i+1} of 5 students:"
    studentNames[i] = gets.chomp.upcase
end
# write a times loop to generate random studentID numbers from 111111 to 999999 
# and store in the studentIds array
5.times do |i|
     studentIds[i] = rand(111111..999999).to_s
end
# write a times loop to generate student emails
# format: (first initial)+(last name)+(last 3 digits of email)
5.times do |i|
    studentNameSplit = studentNames[i].split
    if studentNameSplit.length > 2
        firstInit = studentNameSplit[0].slice(0) + studentNameSplit[1].slice(0)
    else
        firstInit = studentNameSplit[0].slice(0) 
    end
    lastName = studentNameSplit.last
    studentEmails[i] = firstInit + lastName + studentIds[i].slice(3..6)+"@adadeveloperacademy.org"
end   
5.times do |i|
    puts "#{studentNames[i]}, #{studentIds[i]}, #{studentEmails[i]}"
end      