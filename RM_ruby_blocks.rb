#ruby blocks

# Write a loop that prints the numbers 1 to 20.
# num = 1
# while num <= 20
#     puts num 
#     num += 1
# end

#Challenge 2, same thing different method
# num = 1

# 20.times do
#     puts num
#     num += 1
# end

#Challenge 3 Write a loop that prints only even numbers from 20 to 0.

# nums_range = [20..0]

# def is_even array
#     array.select do |value|
#         value.even?
#     end
# end

# puts is_even nums_range

# num = 20

# while num >= 0
#     if num.even?
#     puts num
#     num -= 2
#     end
# end

#Challenge 4 Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.

# nums_arr = [1, 2, 3, 4]

# def mult_5 array 
#     array.map do |value|
#         value * 5
#     end
# end

# puts mult_5 nums_arr

#Challenge 5 Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.

# names_arr = ['ryan', 'miguel', 'sarah', 'andee']

# def capitalize array 
#     array.map! do |value|
#         value.capitalize
#     end
# end

# puts capitalize names_arr

#Challenge 6 Create a method that takes in an array of numbers and returns the largest number in the array.

# random_nums = [1, 4, 53, 189]

# def largest_number array
#     new_array = array.sort.reverse
#     puts new_array[0]
# end

# puts largest_number random_nums

#Challenge 7 smallest number in an array

# random_nums = [4, 12, 1, 189]

# def smallest_number array
#     new_array = array.sort
#     puts new_array[0]
# end

# puts smallest_number random_nums

#Challenge 8 Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.

# random_arr = [2, 1, 6, 5, 3, 8, 7]

# def sorted_odds array
#     new_arr = array.select do |value|
#         value.odd?
#     end
#     new_arr.sort
# end

# puts sorted_odds random_arr

#Challenge 9 Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercased letters should be returned lowercased and all lowercased letters should be returned uppercased.

# random_arr = ['rYAN', 'mIGUEL', "i'm yelling"]

# def reverse_case array
#     swapped_arr = array.map do |value|
#         value.swapcase
#     end
# end

# puts reverse_case random_arr

#Challenge 10 Create a method that takes in an array of words and returns all the words that start with a particular letter. Ex) Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].

given_arr = ['Apple', 'Avocado', 'Banana', 'Mango']

def particular_letter array, letter
    new_arr = array.select do |value|
        value.downcase
        value[0] == letter
    end
end

puts given_arr, a