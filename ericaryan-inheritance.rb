# Story: As a programmer, I can make a car. Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.

# Story: As a programmer, I can give my car a model on initialization. Hint: The model for the car class can be "generic car"

# Story: As a programmer, I can give my car a year on initialization. Hint: The year for the car class can be "my_car year"

# Story: As a programmer, I can tell how many wheels a car has. The default is four. Hint: initialize the car to have four wheels, then create a method to return the number of wheels.

# Story: As a programmer, I can make a Tesla car. Hint: Create an variable called my_tesla which is an instance of class Tesla which inherits from class Car.

# Story: As a programmer, I can give my Tesla a model on initialization.

# Story: As a programmer, I can make a Toyota car.

# Story: As a programmer, I can give my Toyota a model on initialization.

# Story: As a programmer, I can give my Toyota a year on initialization.

# Story: As a programmer, I can make a Honda car.

# Story: As a programmer, I can give my Honda a model on initialization.

# Story: As a programmer, I can give my Honda a year on initialization.

# Story: As a programmer, I can turn on and off the lights in my cars. Lights start in the off position.

# Story: As a programmer, I can signal left and right. Turn signals starts off.

# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 mph.

# Story: As a programmer, I can speed my Teslas up by 10 per acceleration.

# Story: As a programmer, I can slow my Teslas down by 7 per braking.

# Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.

# Story: As a programmer, I can slow my Toyotas down by 5 per braking.

# Story: As a programmer, I can speed my Hondas up by 5 per acceleration.

# Story: As a programmer, I can slow my Hondas down by 2 per braking.

# Story: As a programmer, I can call upon a car to tell me all its information. Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.


class Car
    def initialize (model, year)
        @model = model
        @year = year
        @wheels = 4
        @lights = 'off'
        @signal = 'off'
        @speed = 0
    end

    def get_wheels
        puts "#{@year} #{@model} has #{@wheels} wheels"
    end

    def set_lights
        if @lights == 'off'
            @lights = 'on'
        else
            @lights = 'off'
        end
    end

    def get_lights
        "Lights are #{@lights}."
    end

    def set_signal status
        @signal = status
    end

    def get_signal
        "Signal is #{@signal}."
    end

    def get_speed
        "Speed is: #{@speed}mph"
    end

    def get_info
        "This #{@year} #{@model} has #{@wheels} wheels, it's lights are #{@lights}, turn signal is #{@signal}. Finally, it is moving at #{@speed} mph."
    end
end

class Tesla < Car
    def initialize (model, year)
        super model, year
    end

    def set_speed_up
        @speed += 10
    end

    def set_slow_down
        @speed -= 7
    end
end

class Toyota < Car
    def initialize (model, year)
        super model, year
    end

    def set_speed_up
        @speed += 7
    end

    def set_slow_down
        @speed -= 5
    end

end

class Honda < Car
    def initialize (model, year)
        super model, year
    end

    def set_speed_up
        @speed += 5
    end

    def set_slow_down
        @speed -= 2
    end
end

# my_car = Car.new 'generic_car', 'my_car_year'

my_tesla = Tesla.new 'Tesla truck', 2020

# my_tesla.get_wheels

my_toyota = Toyota.new 'Corolla', 1988

my_honda = Honda.new 'Civic', 1996

# puts my_honda.get_lights

# my_honda.set_lights

# puts my_honda.get_signal

# my_honda.set_signal "right"

# puts my_honda.get_signal

# puts my_tesla.get_speed

my_tesla.set_speed_up

# puts my_tesla.get_speed

# my_tesla.set_slow_down

# puts my_tesla.get_speed

my_toyota.set_speed_up

# puts my_toyota.get_speed

my_toyota.set_slow_down

# puts my_toyota.get_speed

puts my_toyota.get_info
puts my_tesla.get_info