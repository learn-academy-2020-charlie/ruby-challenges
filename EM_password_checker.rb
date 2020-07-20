# You are writing the user registration page for a secure web site. On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:

puts 'Please enter a username.'
username_1 = gets.chomp

puts 'Please enter a password.'
password_1 = gets.chomp

def password_checker username, password

# User ID and password cannot be the same.
    if username == password
        'Username and password cannot be the same.'
# Password cannot be the word "password".
    elsif password == 'password'
        'Password cannot be password.'
# User ID and password have to be at least six characters long.
    elsif username.length < 6 || password.length < 6
        'Username and password must be at least 6 characters long.'
# User ID cannot contain the following characters: !#$ or spaces
    elsif username.include?('!') || username.include?('#') || username.include?('$') || username.include?(' ') 
        'Username cannot contain the following characters "!#$" or spaces.'
# Password has to contain at least one of: !#$
    elsif password.include?('!') == false && password.include?('#') == false && password.include?('$') == false
        'Password must contain one of these characters "!#$".'
    else
        'Username and password are acceptable.'
    end
end

puts password_checker username_1, password_1