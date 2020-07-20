# def sum_these_numbers (num1, num2)
#     sum = num1 + num2
# end

# puts sum_these_numbers 13, 72

# def is_even int
#     if int % 2 == 0
#         true
#     else 
#         false
#     end #ends the if tree
# end #ends the function

# puts is_even 12

# def is_valid_num num
#     if num >= 1 && num <= 10
#         'Valid'
#     else
#         'Invalid'
#     end
# end

# puts is_valid_num 10000000000


# def is_palindrome
#     p "enter your string"
#     string = gets.chomp
#     if string == string.reverse
#         'this is a palindrome'
#     else
#         'this is not a palindrome'
#     end
# end

# p is_palindrome

def registration
#    digits = [1, 2, 3, 4, 5, 6, 7, 8, 9].to_set
    print "enter your username :" 
    user = gets.chomp
    if user.include?'!' || user.include?'#' || user.include?'$'
        "user ID cannot include !#$"
    end
    print "enter your password :"
    password = gets.chomp
#     if false == user.include?'!' || false == user.include?'#' || false == user.include?'$'
#         "password must contain !#$"
#    elsif password.any? {|x| digits.include?(x)}
#         "password must contain at least 1 digit"
# end
#     if user == password
#         "password and username cannot be the same"
#     elsif user.length <= 6 || password.length <= 6
#         "username and password must contain 6 characters"
#     elsif password == "password"
#         "password cannot be password"
#     end
end

print registration