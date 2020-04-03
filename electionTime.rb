# create program that accepts input from user and outputs election results
# welcome user and announce candidates!
puts "Hello user! This is a short election program."
puts "\nThe candidates are: Ms. Marvel, Captain Marvel, and Black Panther.\n"
# input: collect ten votes
msmarvel = 0
captainmarvel = 0
blackpanther = 0
other = 0
10.times do |i|
    puts "Vote ##{i+1}:"
        vote = gets.chomp.downcase
        if vote == "ms. marvel"
            msmarvel += 1
        elsif vote == "captain marvel"
            captainmarvel += 1
        elsif vote == "black panther"
            blackpanther += 1
        else 
            other += 1    
        end
end
# output: print total votes cast and election winner
puts "\nAnd now the results...\n\n"
puts "Vote Totals:"
puts "Ms. Marvel - #{msmarvel} vote(s)"
puts "Captain Marvel - #{captainmarvel} vote(s)"
puts "Black Panther - #{blackpanther} vote(s)"
puts "Other - #{other} vote(s)"
winner = ""
if msmarvel > blackpanther && captainmarvel
    winner = "Ms. Marvel"
elsif blackpanther > captainmarvel && msmarvel
    winner = "Black Panther"
elsif captainmarvel > blackpanther && msmarvel
    winner = "Captain Marvel"
else
    winner = "Recount"
end
puts "\nWinner: #{winner}"
