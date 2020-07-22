# Story: As a programmer, I can make a car. Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.

# Story: As a programmer, I can give my car a model on initialization. Hint: The model for the car class can be "generic car"

# Story: As a programmer, I can give my car a year on initialization. Hint: The year for the car class can be "my_car year"

# Story: As a programmer, I can tell how many wheels a car has. The default is four. Hint: initialize the car to have four wheels, then create a method to return the number of wheels.

# Story: As a programmer, I can make a Tesla car. Hint: Create an variable called my_tesla which is an instance of class Tesla which inherits from class Car.

# Story: As a programmer, I can give my Tesla a model on initialization.


class Car
    def initialize (model, year)
        @model = model
        @year = year
        @wheels = 4
    end
    def get_wheels
        puts "#{@year} #{@model} has #{@wheels} wheels"
    end
end

class Tesla < Car
    def initialize (model, year)
        super model, year
    end
end


# my_car = Car.new 'generic_car', 'my_car_year'

my_tesla = Tesla.new 'Tesla truck', 2020

my_tesla.get_wheels
