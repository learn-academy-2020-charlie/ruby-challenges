# Story: As a programmer, I can make a car. Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.

class Car 
    def initialize (model = 'generic car' , year = 'my_car year')
        @model = model
        @year = year
        @lights = 'off'
        @signal = 'off'
        @wheels = 4
        @mph = 0
        @acceleration = 5
        @brake = 5
    end
    # create a method to return the number of wheels.
    def num_of_wheels 
        puts "Wheels: #{@wheels}"
    end

    def lightswitch
        if @lights == 'off'
            @lights = 'on'
        else 
            @lights = 'off'
        end
    end

    def turn_signal 
        puts 'Turn Signals: type "left", "right" or "off"'
        @signal = gets
    end
    
    def stop
        @mph = 0
    end

    # make a method that gets acceleration, braking numbers
    def set_acceleration_and_brake
    # puts 'enter the acceleration and brake numbers.'
    puts 'enter your acceleration speed'
    # @acceleration = gets
        @acceleration = gets
    puts 'enter your brake speed'
    # @brake = gets
        @brake = gets
    end

    # make a method that accelerates and brakes
    def gas_or_brake 
        # ask if they want to press on the gas or brakes
        puts 'do you want to step on "gas" or "brakes"?'
        # gets = gas or brakes.
        input = gets 
        input
        # if gas add @acceleration
        if input == 'gas'
            @mph = @mph + @acceleration
        #elsif brakes subtract @brake
        elsif input == 'brakes'
            @mph = @mph - @brake
        end
    end

    def car_info 
        puts "The car is a #{@year} #{@model}: it has #{@wheels} wheels. The lights are #{@lights}. Turn signal is set to #{@signal}. It is currently moving at #{@mph}mph."
    end
end

#####THIS IS THE CALLS 

my_car = Car.new 'generic car', 'generic year'
# puts my_car.car_info

my_tesla = Car.new 'Model X', '2020'

# puts my_tesla.car_info

my_toyota = Car.new 'Camry', '2012'

# puts my_toyota.car_info

my_honda = Car.new 'Accord', '2017'

# puts my_honda.car_info

# my_honda.lightswitch

# puts my_honda.car_info
# my_honda.turn_signal

# puts my_tesla.car_info

# my_tesla.set_acceleration_and_brake

# my_tesla.gas_or_brake

# puts my_tesla.car_info


