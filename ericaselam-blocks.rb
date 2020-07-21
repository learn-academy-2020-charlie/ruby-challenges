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


# ----ERICA drives-----------------------------------------------
# (6) Create a method that takes in an array of numbers and returns the largest number in the array.
# random_arr = [19, 0, 22, 8, 27, 500, -35,  31, 30, 12]

def find_largest array
    array.max
end

# p find_largest randomArr


def find_largest_2 array
    # use select to filter the array and only return one value, the highest
    maxValue = array[0]
    new_array = array.select do |value|
        if value > maxValue
            maxValue = value
        end
    end
    new_array.last
end

# p find_largest_2 random_arr

# (7) Create a method that takes in an array of numbers and returns the smallest number in the array.
def find_smallest array
    array.min
end

# p find_smallest random_arr


def find_smallest_2 array
    # use select to filter the array and only return one value, the lowest
    minValue = array[0]
    new_arr = array.select do |value|
        if value < minValue
            minValue = value
        end
    end
    new_arr.last
end

# p find_smallest_2 random_arr

# (8) Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.

random_arr = [19, 0, 22, 8, 27, 500, -35,  31, 30, 12]

def sort_odd array
    array.select { |value| value % 2 != 0 }.sort
end

# p sort_odd random_arr


# (9) Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercased letters should be returned lowercased and all lowercased letters should be returned uppercased.

words_array = [ 'Happy', 'erica', 'selaM', 'GO', 'tEAm']
# exepcted ouput = ['hAPPY', 'ERICA', 'SELAm', 'go', 'TeaM']

def reverse_casing array
    # loop through every word in the array (use .map) and swapcase to every word
    array.map {|value| value.swapcase} 
end

# p reverse_casing words_array

# (10) Create a method that takes in an array of words and returns all the words that start with a particular letter. Ex) Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].

fruit_array = ['Apple', 'Avocado', 'Banana', 'Mango'] 

# create a method that takes in an array and a  starting letter
def find_start_letter (array, letter)
    # loop through the array to look for words that start with the letter (use select) 
    new_arr_2 = array.select do |value|
        value.downcase.slice(0) == letter.downcase
    end
    new_arr_2
end

p find_start_letter fruit_array, 'b'