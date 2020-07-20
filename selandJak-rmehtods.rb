# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.

def sum_these_numbers (num1, num2)
    num1+num2
end
# puts sum_these_numbers 5, 2


# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.

def is_even number
    if number % 2 ==0
        "#{number} is even!"
    else 
        "#{number} is not even!"
    end
end
# puts is_even 5

# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

def valid_num number
    if 1 < number && number < 10
        "#{number} is valid!"
    else
        "#{number} is invalid!"
    end
end

# puts valid_num 5

# Create a method that takes in a string and determines if the string is a palindrome.

def palindrome string
    if string == string.reverse
        "#{string} is a palindrome!"
    else 
        "#{string} is not a palindrome"
    end 
end
# puts palindrome 'sir'


# -----------------------------------------------------------------------------

# You are writing the user registration page for a secure web site. On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:

# User ID and password cannot be the same.

def user_reg (string1, string2)
    if string1 == string2
        puts 'user ID and password cannot be the same'
# User ID and password have to be at least six characters long.
    elsif
        string1.length <=5 || string2.length <=5
        puts 'User ID and password must be at least 6 character!'
# Password has to contain at least one of: !#$
    elsif 
        string2.include? != "!"
        puts "password must contain at least one of: !#$"
    end
# User ID cannot contain the following characters: !#$ or spaces
# Password cannot be the word "password".
end

user_reg "bobbby", "samantha"