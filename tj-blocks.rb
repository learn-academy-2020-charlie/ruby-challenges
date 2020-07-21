# Write a loop that prints the numbers 1 to 20.

# num = 1
# while num <=20
#     p num 
#     num +=1
# end

# Write a loop that prints the numbers 1 to 20 using a different approach than previously used.

# range = 1..20
# range.each do |value|
#     p value 
# end

# Write a loop that prints only even numbers from 20 to 0.

# num = 20 
# while num >=0
#     if num.even? 
#         p num
#     end 
#     num -=1
# end 

# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.

# num_array = [2,3,4,5]
# def times_5 array 
#    new_array =  array.map do |value|
#         value * 5
#    end 
#    new_array
# end
# p times_5 num_array

# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.

# lower_case_array = ['snake','bear','fish','zebra']
# def capitalization array 
#      array.each do |value|
#         value.capitalize!
#    end 
# end
# p capitalization lower_case_array

#Create a method that takes in an array of numbers and returns the largest number in the array.

# def get_greatest_num array
#    array.each do |value, index|
#       if index - 1 == array.length
#          largest_num
#       elsif value < array[index + 1]
#          largest_num = array[index + 1]
#       end 
#       largest_num
#    end
# end

# def greatest_num array
#    counter = 0
#    my_greatest_num = array[0]
#    while counter < array.length-1
#       if my_greatest_num < array[counter] 
#          my_greatest_num = array[counter] 
#       end
#       counter += 1
#    end
#    my_greatest_num
# end

# puts greatest_num(my_array) 


# def smallest_num array
#    my_greatest_num = array.min
#    my_greatest_num
# end

# puts smallest_num my_array 

# my_array = [1, 5, 9001, 512, -300, 8 ]
# #Declare a function that takes in any array
# def get_odds array
# #Retrieve all the odd numbers from the array
#    my_odd_array = array.select do |value|
#       value % 2 != 0
#    end
#    #Order the odd numbers from least to greatest
#    my_odd_array.sort
# end

# p get_odds my_array
test_array = ['hI', 'hElLo', 'whOOps', 'aDIOs']

def reverse_case array
#need a method to iterate through the array
   switched_case_array = array.map do |word|
   #need to be able to identify the case of each letter
      letter_array = word.split('')
   #need to switch the case of the letter and return the new letter
      switched_case_letter_array = letter_array.map do |letter|
         if letter == letter.capitalize
            letter.downcase!
         elsif letter == letter.downcase
            letter.upcase!
         end # ends if tree
         letter
      end #ends the letter_array map
      new_word = switched_case_letter_array.join('')
   end #ends the array.map
end #ends the whole method

p reverse_case test_array




