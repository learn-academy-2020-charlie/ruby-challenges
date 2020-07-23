# Story: As a programmer, I can make a car. Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.
class Car
# Story: As a programmer, I can give my car a model on initialization. Hint: The model for the car class can be "generic car"
# Story: As a programmer, I can give my car a year on initialization. Hint: The year for the car class can be "my_car year"
    def initialize
        @model = 'generic car'
        @year = 'my_car year'
# Story: As a programmer, I can tell how many wheels a car has. The default is four. Hint: initialize the car to have four wheels, then create a method to return the number of wheels.
        @wheels=4
        # Story: As a programmer, I can turn on and off the lights in my cars. Lights start in the off position.
        @lights = 'off'
        # Story: As a programmer, I can signal left and right. Turn signals starts off.
        @signal = 'off'
    end
    def light_switch
        if @lights == 'off'
            @lights = 'on'
        else @lights = 'off'
        end
    end
    def turn_signal
        puts 'turns signal: type "left, right, off"'
        @signal = gets
    end
    def car_info
      "The car is a #{@year} #{@model}: it has #{@wheels} wheels. The lights are #{@light}. Turn signal is set to #{@signal}"
    end
end

my_car = Car.new
puts my_car.light_switch
# Story: As a programmer, I can make a Tesla car. Hint: Create an variable called my_tesla which is an instance of class Tesla which inherits from class Car.
class Tesla < Car
# Story: As a programmer, I can give my Tesla a model on initialization.
    def initialize (model, year)
        super()
        @model = model
# Story: As a programmer, I can give my Tesla a year on initialization.
        @year = year
    end
    # def show_tesla
    #      "wheels: #{@wheels} #{@model} #{@year}"
    # end
end

my_tesla = Tesla.new 'Model X', '2020'
puts my_tesla.car_info


# Story: As a programmer, I can make a Toyota car.
class Toyota < Car
    def initialize (model, year)
        super()
        # Story: As a programmer, I can give my Toyota a model on initialization.
        @model = model
        # Story: As a programmer, I can give my Toyota a year on initialization.
        @year = year
    end
end

my_toyota = Toyota.new 'Camry', '1998'


# Story: As a programmer, I can make a Honda car.
class Honda < Car
    def initialize (model, year)
        super()
        # Story: As a programmer, I can give my Honda a model on initialization.
        @model = model
        # Story: As a programmer, I can give my Honda a year on initialization.
        @year = year
    end
end

my_honda = Honda.new 'Civic', '1989'







# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 mph.

# Story: As a programmer, I can speed my Teslas up by 10 per acceleration.

# Story: As a programmer, I can slow my Teslas down by 7 per braking.

# Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.

# Story: As a programmer, I can slow my Toyotas down by 5 per braking.

# Story: As a programmer, I can speed my Hondas up by 5 per acceleration.

# Story: As a programmer, I can slow my Hondas down by 2 per braking.

# Story: As a programmer, I can call upon a car to tell me all its information. Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.

# Stretch Challenges
# Story: As a programmer, I can keep a collection of two of each kind of car model, all from different years. Hint: Create two of each vehicles, all from different model years, and put them into an array.

# Story: As a programmer, I can sort my collection of cars based on model.

# Story: As a programmer, I can sort my collection of cars based on year. Hint: Find out how the spaceship operator can help you with an array.
