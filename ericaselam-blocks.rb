#(1) Write a loop that prints the numbers 1 to 20.
my_num = 0
20.times do
    my_num += 1
    # p my_num
end

#(2) Write a loop that prints the numbers 1 to 20 using a different approach than previously used.

my_numb = [*1..20]
# puts my_numb

my_numbers = 1..20
my_numbers.each do |value|
    # puts value
end

numbs = 1..5
numbs.each do |value|
    # p value
end

# (3) Write a loop that prints only even numbers from 20 to 0.

range = [*0..20]   
even_nums = range.reverse.select do |value|
    value.even?
end
# puts even_nums

# (4) Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.

magic_numbs = [*2..5]
def mult_five array
    array.map do |value|
        value * 5
    end
end
# p magic_numbs
# p mult_five magic_numbs

# (5) Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.

magic_words = ['erica', 'selam']
def capitalizers array
    array.map! do |value|
        value.capitalize
    end
end
# p capitalizers magic_words
# p magic_words


# ----ERICA drives
# Create a method that takes in an array of numbers and returns the largest number in the array.
randomArr = [19, 0, 8, 31, 12]

def findLargest array
    array.max
end

# p findLargest randomArr


def findLargest2 array
    # use select to filter the array and only return one value, the highest
    maxValue = array[0]
    array.select do |value|
        value > maxValue
        maxValue = value
    end
    maxValue
end

p findLargest2 randomArr


# Create a method that takes in an array of numbers and returns the smallest number in the array.
# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.
# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercased letters should be returned lowercased and all lowercased letters should be returned uppercased.
# Create a method that takes in an array of words and returns all the words that start with a particular letter. Ex) Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].