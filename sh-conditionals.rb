# Challenge: Rock, Paper, Scissors
# Write the code that allows two users to input their moves in terminal for "Rock, Paper, Scissors" and determines the winner (or if a tie occurred).

puts "Enter player one's name"
player1 = gets.chomp
p "Hello, #{player1}"

puts "Enter player two's name"
player2 = gets.chomp
puts "Hello, #{player2}"

def game player1, player2
    if player1 == "rock" && player2 == "scissors"
        "#{player1} wins because rock beats scissors"

    elsif player1 == "scissors" && player2 == "paper"
        "#{player1} wins because scissors beats paper"

    elsif player1 == "paper" && player2 == "rock"
        "#{player1} wins because paper beats rock"
    
    elsif player2 == "rock" && player1 == "scissors"
        "#{player2} wins because rock beats scissors"

    elsif player2 == "scissors" && player1 == "paper"
        "#{player2} wins because scissors beats paper"

    elsif player2 == "paper" && player1 == "rock"
        "#{player2} wins because paper beats rock"
    else 
        'Shoot again!'
    end
end

puts "#{player1} choose rock, paper, or scissors"
shoot1 = gets.chomp

puts "#{player2} choose rock, paper, or scissors"
shoot2 = gets.chomp

puts game shoot1, shoot2

#--------------#--------------#--------------#--------------#--------------#
#QUESTION: Can the ruby console take in multiple user inputs?
puts "Enter player one's name"
player1 = gets.chomp
p "Hello, #{player1}"

puts "Enter player two's name"
player2 = gets.chomp
puts "Hello, #{player2}"

def game shoot1, shoot2
    if shoot1 == "rock" && shoot2 == "scissors"
        "#{player1} wins because rock beats scissors"

    elsif shoot1 == "scissors" && shoot2 == "paper"
        "#{player1} wins because scissors beats paper"

    elsif shoot1 == "paper" && shoot2 == "rock"
        "#{player1} wins because paper beats rock"
    
    elsif shoot2 == "rock" && shoot1 == "scissors"
        "#{player2} wins because rock beats scissors"

    elsif shoot2 == "scissors" && shoot1 == "paper"
        "#{player2} wins because scissors beats paper"

    elsif shoot2 == "paper" && shoot1 == "rock"
        "#{player2} wins because paper beats rock"
    else 
        'Shoot again!'
    end
end

puts "#{player1} choose rock, paper, or scissors"
shoot1 = gets.chomp

puts "#{player2} choose rock, paper, or scissors"
shoot2 = gets.chomp

puts game shoot1, shoot2