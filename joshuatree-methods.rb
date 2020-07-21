# Create a method that takes in an array of numbers and returns the largest number in the array.

# Create a method that takes in an array of numbers and returns the smallest number in the array.

# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.

# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercased letters should be returned lowercased and all lowercased letters should be returned uppercased.

# Create a method that takes in an array of words and returns all the words that start with a particular letter. Ex) Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].

# num = 1
# while num <= 20
#     p num
#     num += 1
# end

# range = 1..20
# range.each do |value|
#     p value
# end

# num = [*0..20]
# def only_evens array
#     array.reverse.select do |value|
#         value.even?
#     end
# end

# p only_evens num

# def times_five array
#     array.map do |value|
#         value * 5
#     end
# end

# p times_five num


# words = ["orange", "car", "dog", "lemonade"]
# def to_upper array
#     array.map! do |value|
#         value.upcase
#     end
# end

# p to_upper words

# num_array = [34, 653, 2, 67, 34]

# p num_array.max
# p num_array.min

# def odd_least_to_great array
#     array.sort.select do |value|
#         value.odd?
#     end
# end

# p odd_least_to_great num_array

# name = ['Cynthia', 'Ryan', 'Miguel', "Selam"]

# def reverse_casing array
#     array.map do |value|
#         value.split('').map do |value|
#         if value == value.upcase
#             value.downcase
#             else
#             value.upcase
#         end
#     end
#     end
# end

# p reverse_casing name




# if index is lowercacase return uppercase 
# if index is uppercase return lowercase

class Task
    def initialize title
        @title = title
        @status = "not clean"
    end
    def set_info description
        @description = description
    end
    def set_state status
        @status = status
    end
    def get_info
        "#{@title} : #{@description} : #{@status}"
    end
end

cleaned_my_room = Task.new 'Cleaned My Room'

cleaned_my_room.set_info 'Make bed, pick up clothes, vacuum'
p cleaned_my_room.get_info
cleaned_my_room.set_state 'cleaned room'

