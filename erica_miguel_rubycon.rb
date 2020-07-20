# Write the code that allows two users to input their moves in terminal for "Rock, Paper, Scissors" and determines the winner (or if a tie occurred).

puts 'Player 1 enter rock, paper, or scissors'
player_1 = gets.chomp.downcase

puts 'Player 2 enter rock, paper, or scissors'
player_2 = gets.chomp.downcase

# if player_1 entry is the same as player_2 entry
if player_1 == player_2
# puts "Tie"
    puts "Tie"
# elsif (player_1 is rock and player_2 is scissors) OR (player_1 is paper and player_2 is rock) OR (player_1 is scissors and player_2 is paper)
elsif ((player_1 == "rock" && player_2 == "scissors") || (player_1 == "paper" && player_2 == "rock") || (player_1 == "scissors" && player_2 == "paper"))
# then puts player_1 wins
    puts "Player_1 wins with #{player_1}."
# elsif (player_2 is rock and player_1 is scissors) OR (player_2 is paper and player_1 is rock) OR (player_2 is scissors and player_1 is paper)
elsif ((player_2 == "rock" && player_1 == "scissors") || (player_2 == "paper" && player_1 == "rock") || (player_2 == "scissors" && 1 == "paper"))
# then puts player_2 wins
    puts "Player_2 wins with #{player_2}."
# else
else
# puts not a valid input (please enter rock or paper or scissors only!)
    puts 'Not a valid input (please enter rock or paper or scissors only!)'
#end
end