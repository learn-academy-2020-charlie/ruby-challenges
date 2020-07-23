# As a developer I'm given a multidigit number, write a function that takes in that number and returns an array with each digit




def multi_array number
# to string method to convert our number into a string
    number.to_s.split("").map do |value|
        value.to_i
    end
end
# split method and convert that string into an array
# return array

p multi_array 100