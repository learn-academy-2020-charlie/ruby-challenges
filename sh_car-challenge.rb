# CAR CHALLENGE

# Story: As a programmer, I can make a car. Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.
# Story: As a programmer, I can give my car a model on initialization. Hint: The model for the car class can be "generic car"
# Story: As a programmer, I can give my car a year on initialization. Hint: The year for the car class can be "my_car year"
# Story: As a programmer, I can tell how many wheels a car has. The default is four. Hint: initialize the car to have four wheels, then create a method to return the number of wheels.

class Car 
    def initialize (model, year)
        @model= model
        @year= year
        @wheels = 'four wheel drive'
    end
    def model
        @model
    end
    def year
        @year
    end
    def wheels
        @wheels
    end
    def car_info
        "The model is a #{@year} #{@model} #{@wheels}."
    end
end
my_car= Car.new 'generic', 2020
p my_car.car_info

# ------------------------ Refactored ------------------------
# class Car 
#     def initialize 
#         @model = 'generic'
#         @year = 2020
#         @wheels = 'four wheel drive'
#     end
#     def car_info
#         puts "The model is a #{@year} #{@model} #{@wheels}."
#     end
# end
# my_car= Car.new 
# my_car.car_info

# ------------------------ Child Class ------------------------
# Story: As a programmer, I can make a Tesla car. Hint: Create an variable called my_tesla which is an instance of class Tesla which inherits from class Car.
# Story: As a programmer, I can give my Tesla a model on initialization.
# Story: As a programmer, I can give my Tesla a year on initialization.

class Tesla < Car
    def initialize model, year
        super 
    end
end
my_tesla = Tesla.new 'Tesla Sport', 2020
p my_tesla.car_info 

# ------------------------ Child Class ------------------------

# Story: As a programmer, I can make a Toyota car.
# Story: As a programmer, I can give my Toyota a model on initialization.
# Story: As a programmer, I can give my Toyota a year on initialization.

class Toyota < Car
    def initialize model, year
        super 
    end
end
my_toyota = Tesla.new 'Toyota Camry', 2020
p my_toyota.car_info

# ------------------------ Child Class ------------------------

# Story: As a programmer, I can make a Honda car.
# Story: As a programmer, I can give my Honda a model on initialization
# Story: As a programmer, I can give my Honda a year on initialization.
class Honda < Car
    def initialize model, year
        super 
    end
end
my_honda = Honda.new 'Honda', 2020
p my_honda.car_info

# -----------------------IN PROGRESS-------------------------------------------

# Story: As a programmer, I can turn on and off the lights in my cars. Lights start in the off position.
# Story: As a programmer, I can signal left and right. Turn signals starts off.
# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 mph.
class Car 
    def initialize (model, year)
        @model= model
        @year= year
        @wheels = 'four wheel drive'
    end
    def model
        @model
    end
    def year
        @year
    end
    def wheels
        @wheels
    end
    def car_info
        "The model is a #{@year} #{@model} #{@wheels}."
    end
end
my_car= Car.new 'generic', 2020
p my_car.car_info

# ------------------------------------------------------------------

# Story: As a programmer, I can speed my Teslas up by 10 per acceleration.
# Story: As a programmer, I can slow my Teslas down by 7 per braking.
class Tesla < Car
    def initialize model, year
        super 
    end
end
my_tesla = Tesla.new 'Tesla Sport', 2020
p my_tesla.car_info 

# ------------------------------------------------------------------

# Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.

# Story: As a programmer, I can slow my Toyotas down by 5 per braking.

# ------------------------------------------------------------------

# Story: As a programmer, I can speed my Hondas up by 5 per acceleration.

# Story: As a programmer, I can slow my Hondas down by 2 per braking.

# ------------------------------------------------------------------

# Story: As a programmer, I can call upon a car to tell me all its information. Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.