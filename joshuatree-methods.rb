# Write a loop that prints the numbers 1 to 20.
# Write a loop that prints the numbers 1 to 20 using a different approach than previously used.
# Write a loop that prints only even numbers from 20 to 0.
# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.
# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.

# num = 1
# while num <= 20
#     p num
#     num += 1
# end

# range = 1..20
# range.each do |value|
#     p value
# end

num = [*0..20]
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


words = ["orange", "car", "dog", "lemonade"]
def to_upper array
    array.map! do |value|
        value.upcase
    end
end

p to_upper words