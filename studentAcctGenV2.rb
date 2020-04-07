# make one array for student data instead of 3 arrays, each entry a hash
student_data = []
# ask user to enter names of students, but generate all of the data at once
5.times do |i|
    student_data[i] = {
        name: "",
        ID: 0,
        email: ""
    }
    puts "Please enter full names (first and last) for ##{i+1} of 5 students:"
    student_data[i][:name] = gets.chomp.upcase
    idNumber = rand(111111..999999).to_s
    if i != 0 && idNumber != student_data[i-1][:ID]
        student_data[i][:ID] = idNumber
    else 
        student_data[i][:ID] = rand(111111..999999).to_s   
    end
    studentNameSplit = student_data[i][:name].split
    if studentNameSplit.length > 2
        firstInit = studentNameSplit[0].slice(0) + studentNameSplit[1].slice(0)
    else
        firstInit = studentNameSplit[0].slice(0) 
    end
    lastName = studentNameSplit.last
    student_data[i][:email] = firstInit + lastName + student_data[i][:ID].slice(3..6)+"@adadeveloperacademy.org"
end
# retrieve each record from array of hashes
5.times do |i|
    puts "#{student_data[i][:name]}, #{student_data[i][:ID]}, #{student_data[i][:email]}"
end          
