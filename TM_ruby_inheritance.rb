class Car 
    def initialize(model = "generic car", year = "my_car year")
        @model = model
        @year = year
        @wheels = 4
        @acceleration = 5
        @brake = 5
        @mph = 0
        @lights = 'off'
        @signal = 'off'
    end
    
    #Getters
    def get_wheels 
        @wheels
    end

    def get_info
        puts "#{@year} #{@model}.\nSpeed: #{@mph}mph.\nLights: #{@lights}\n Signal: #{@signal}"
    end

    def get_speed
        @mph
    end

    #Setters
    def set_acceleration
        puts 'enter acceleration'
        @acceleration = gets.to_i
    end

    def set_brake
        puts 'enter brake'
        @brake = gets.to_i
    end

    def set_lights
        puts 'lights "on" or "off"?'
        @lights = gets.downcase
    end

    def set_signal
        puts 'turn signals: "off" "left" or "right"?'
        @signal = gets.downcase
    end

    #Other Methods
    def change_speed
        puts "Type 'gas' to speed up \nType 'brake' to slow down"
        user_input = gets.chomp.downcase
        if user_input == 'gas'
            @mph = @mph + @acceleration
        elsif user_input == 'brake'
            @mph = @mph - @brake
        else 
            puts 'Not a valid input'
        end
    end

end

my_car = Car.new
# puts my_car.get_info


class Tesla < Car
    def initialize(model, year)
        super(model, year)
    end
end

my_tesla = Tesla.new('Model S', '2020')

my_tesla.set_acceleration
my_tesla.set_brake
my_tesla.change_speed
my_tesla.change_speed
puts my_tesla.get_info


