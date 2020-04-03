# define user currency value
userCurrency = 0.00
# ask user how much money they have, place $ in prompt
puts "Welcome, user! I am VendTron2020.
Please enjoy a simulated candy purchase."
print "\nHow much currency do you possess? > $"
    userCurrency = gets.to_f
print "\nAcknowledged. You possess $#{sprintf("%0.02f",userCurrency)}."
print "\n\nPlease peruse VendTron2020's offerings:"

# display all candy options and costs
A = 0.65
B = 1.25
C = 1.85
D = 1.25
E = 0.85
print "\nA $#{A} Hershey's"
print "\nB $#{B} Twizzlers"
print "\nC $#{C} CHEEZ-IT"
print "\nD $#{D} Nerds"
print "\nE $#{E} Reese's"
# .upcase handles casing
print "\n\nMake your selection > "
    userSelection = gets.chomp.upcase
# tell user if they can or cannot afford each candy
# calculate the change for users
if userSelection == "A"
    if userCurrency >= A
        print "\nThank you for purchasing with VendTron."
        print "\nPlease take your $#{sprintf("%0.02f",userCurrency - A)} change and enjoy your purchase."
    else
        print "\nYour $#{sprintf("%0.02f",userCurrency)} is insufficient for this purchase."
        print "\nGoodbye."    
    end
elsif userSelection == "B"
    if userCurrency >= B
        print "\nThank you for purchasing with VendTron."
        print "\nPlease take your $#{sprintf("%0.02f",userCurrency - B)} change and enjoy your purchase."
    else
        print "\nYour $#{sprintf("%0.02f",userCurrency)} is insufficient for this purchase."
        print "\nGoodbye."    
    end
elsif userSelection == "C"
    if userCurrency >= C
        print "\nThank you for purchasing with VendTron."
        print "\nPlease take your $#{sprintf("%0.02f",userCurrency - C)} change and enjoy your purchase."
    else
        print "\nYour $#{sprintf("%0.02f",userCurrency)} is insufficient for this purchase."
        print "\nGoodbye."    
    end
elsif userSelection == "D"
    if userCurrency >= D
        print "\nThank you for purchasing with VendTron."
        print "\nPlease take your $#{sprintf("%0.02f",userCurrency - D)} change and enjoy your purchase."
    else
        print "\nYour $#{sprintf("%0.02f",userCurrency)} is insufficient for this purchase."
        print "\nGoodbye."    
    end
elsif userSelection == "E"
    if userCurrency >= E
        print "\nThank you for purchasing with VendTron."
        print "\nPlease take your $#{sprintf("%0.02f",userCurrency - E)} change and enjoy your purchase."
    else
        print "\nYour $#{sprintf("%0.02f",userCurrency)} is insufficient for this purchase."
        print "\nGoodbye."    
    end
else
    print "\nThat selection is invalid. \nGoodbye."         
end    
# handle errors

