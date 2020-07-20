# Write the code that allows two users to input their moves in terminal for "Rock, Paper, Scissors" and determines the winner (or if a tie occurred).

# puts 'Player 1 enter rock, paper, or scissors'
# player_1 = gets.chomp.downcase

# puts 'Player 2 enter rock, paper, or scissors'
# player_2 = gets.chomp.downcase

# # if player_1 entry is the same as player_2 entry
# if player_1 == player_2
# # puts "Tie"
#     puts "Tie"
# # elsif (player_1 is rock and player_2 is scissors) OR (player_1 is paper and player_2 is rock) OR (player_1 is scissors and player_2 is paper)
# elsif ((player_1 == "rock" && player_2 == "scissors") || (player_1 == "paper" && player_2 == "rock") || (player_1 == "scissors" && player_2 == "paper"))
# # then puts player_1 wins
#     puts "Player_1 wins with #{player_1}."
# # elsif (player_2 is rock and player_1 is scissors) OR (player_2 is paper and player_1 is rock) OR (player_2 is scissors and player_1 is paper)
# elsif ((player_2 == "rock" && player_1 == "scissors") || (player_2 == "paper" && player_1 == "rock") || (player_2 == "scissors" && 1 == "paper"))
# # then puts player_2 wins
#     puts "Player_2 wins with #{player_2}."
# # else
# else
# # puts not a valid input (please enter rock or paper or scissors only!)
#     puts 'Not a valid input (please enter rock or paper or scissors only!)'
# #end
# end

# RUBY METHODS

# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.

def sum_these_numbers int_1, int_2
    int_1 + int_2
end

# puts sum_these_numbers 1, 2

# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.

def is_even int 
    if int % 2 == 0
        true
    else 
        false
    end
end

# puts is_even 4
# puts is_even 5

# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

def between_1_and_10 num 
    if 1 <= num && num <= 10
        'Valid'
    else
        'Invalid'
    end
end

# puts between_1_and_10 4
# puts between_1_and_10 10
# puts between_1_and_10 12

# Create a method that takes in a string and determines if the string is a palindrome.

def is_palindrome string
    if string == string.reverse
        "#{string} is a palindrome."
    else
        "#{string} is not a palindrome."
    end
end

# puts is_palindrome 'boob'
# puts is_palindrome 'taco'









