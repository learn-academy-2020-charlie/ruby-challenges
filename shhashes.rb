# # A hash is a collection of unique keys and their values
# # A hash is like an array but instead of the values being referenced by an index, the values are reference by their unique key

# 1. Keys are strings and values are assigned using a hash rocket =>:
# # variable            key     value   
# shopping_cart = { "apples" => 5, "kiwis" => 2 }

# 2. Keys are symbols and values are assigned using a hash rocket =>:
# symbols - the unique key in a key:value pair    
# #                   key     value    
# shopping_cart = { :yogurt => "yoplay", :flour => "All Purpose" }

# 3. Key value pairs much like a JavaScript object:
# shopping_cart = { nuts: "almond", bananas: 3 }

# 4. A hash can also be created through the new method:
# shopping_cart = Hash.new
# shopping_cart["lettuce"] = "spring mix"

# # --OR--
# > shopping_cart[:cheese] = "Cheddar"
# > shopping_cart
# => {"lettuce"=>"spring mix", :cheese=>"Cheddar"}

# ##Use symbols as names or labels for things (like methods) & use strings when you care more about the data (individual characters).


# # comp_uter = {'Macs'=> 3, 'PCs' => 5} #strings

# # comp_uter = {:computers => 8, :VR => 'HTC vive'}

# comp_1={console: 'xbox', games: 149}

# comp_uter = Hash.new 
#             key        value 
# comp_uter['Macbook']="pro"

# # loop
# vegetables = {:broccoli => 3, :cauliflower => 5}
# vegetables.each do |key, value|
#     puts "The cart has #{value} #{key} games"
# end

# ---------------------#---------------------#---------------------#

# blocks ~ iterables

# times method with do/end block
# times is a very simple iritable that executes block a specified number of times
# 5. times do
#     p "hello"
# end

# curly braces block
# 5.times {p 'hello'}

# add one to a number for each iteration
# my_num = 5
# my_num.times do
#    puts 'hello'
# end
# 10.times do 
#     my_num +=1
# end

# each (it uses an object's length to determine how many times to run) iterates through object/array/hash

# num = [2,3,4]
# num.each do
#     p 'yo'
# end
#--> yo, yo, yo

# num = [2,3,4]
# num.each do |value|
#     p value * 3
# end

# while loop 
# numb = 1
# while num <= 10
#     p numb
#     numb += 1
# while that condition is not met the while loop will continue to iterate until it meets the condition. In this case the variable starts at 1 and increase in increments of 1 and while has denoted that it'll iterate until the variable numb has reached 10

# ranges/ beginning and end of value of range separated by two dots
# range = 1..5
# range.each do |value|
#     p value
# end

# my_range = 'a'..'m'
# my_range.each do |value|
#     p value
# end

# you can also create a range in an array
# letters = Array('a'..'d')
# puts letters
# --> a, b, c, d

nums_range = [*1..10]
# nums_range

# nums_range.each do |value|
#     if value%2==0
#         p 'even'
#     else
#         p value
#     end
# end

# same output
# nums_range.each do |value|
#     if value.even?
#         p 'even'
#     else
#         p value
#     end
# end

# MAP
# nums_range = [*1..10] *--splat syntax for array class

# def get_odds num
#     num.map do |value|
#         if value.odd?
#             'odd'
#         else
#             value
#         end
#     end
# end
# p get_odds nums_range

magic_nums = [42, 13, 7]
def mult_two array 
    array.map do |value|
        value * 2
    end
end
# p mult_two magic_nums
# p magic_nums

# for a permanent change use bang operator
magic_nums = [42, 13, 7]
def mult_two array 
    array.map! do |value|
        value * 2
    end
end
# p mult_two magic_nums
# p magic_nums

# select method - very similar to filter

def is_even array
    array.select do |value|
        value.even?
    end
end
# p is_even magic_nums

greeting = ['hey', 'yo', 'hello', 'wsup', 'whats good', 'whats happenin']
def has_e array
    array.select do |value|
        value.include? ('w') && value.include?('e')
    end
end
p has_e greeting