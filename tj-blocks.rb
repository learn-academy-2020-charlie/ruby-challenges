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

my_array = [1, 5, 9001, 512, -300, 0 ]

def greatest_num array
   counter = 0
   my_greatest_num = 0
   while counter < array.length
      if array[counter] < array[counter + 1] 
         my_greatest_num = array[counter + 1] 
         counter += 1
      end
   end
   my_greatest_num
end

p greatest_num my_array 