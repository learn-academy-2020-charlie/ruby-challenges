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

# fruits_array = ['Apple', 'Avocado', 'Banana', 'Mango']

# def return_letter (array, letter)
#     array.select do |value| 
#         value.split('')[0] == letter
#     end
# end

# p return_letter fruits_array, 'A'

# Write a method that prints the numbers from 1 to 100. For multiples of three print Fizz instead of the number, for multiples of five print Buzz instead of the number, for numbers that are multiples of both three and five print FizzBuzz, for all other numbers print the number.

# numbers = [*1..100]

# def fizzbuzz array
#     array.map do |value|
#         if value % 3 == 0 && value % 5 == 0
#         value = 'fizzbuzz'
#         elsif value % 3 == 0
#         value = 'fizz'
#         elsif value % 5 == 0
#         value = 'buzz'
#         else
#             value
#         end
#     end
# end

# p fizzbuzz numbers

# if index is lowercacase return uppercase 
# if index is uppercase return lowercase

# class Task
#     def initialize title
#         @title = title
#         @status = "not clean"
#     end
#     def set_info description
#         @description = description
#     end
#     def set_state status
#         @status = status
#     end
#     def get_info
#         "#{@title} : #{@description} : #{@status}"
#     end
# end

# cleaned_my_room = Task.new 'Cleaned My Room'

# cleaned_my_room.set_info 'Make bed, pick up clothes, vacuum'
# p cleaned_my_room.get_info
# cleaned_my_room.set_state 'cleaned room'


class Car 
    def initialize (model, year)
        @model = 'generic car'
        @year =  'my_car year'
end

my_car = Car.new