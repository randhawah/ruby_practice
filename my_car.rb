class MyCar
    attr_accessor :color
    attr_reader :year

    def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
    end

    def to_s
        puts "My car is a #{color}, #{year}, #{@model}" 
        # we have to use @model because that is not available in the attr_accessor or attr_reader
        #if we add a attr_xxx for model aswell, we can use the mdoel without the @, in this case it is looking for the 
        #instance variable and not the accessor method. - this is good to keep like this for inderstanding the concept 
        #of attr_xxx but in practice we can use either way depending on the requirement
    end

    def self.gas_mileage(gallons, miles)
        puts "#{miles/gallons} miles per gallon of gas"
    end

    def speed_up(number)
        @current_speed += number
        puts "You push the gas and accelerate #{number} kmph."
    end

    def brake(number)
        @current_speed -= number
        puts "You push the brake and decelerate #{number} kmph."
    end

    def current_speed
        puts "You are driving at #{@current_speed} kmph." 
        #we need to add @ to the current_speed because this is the instance variable 
        #we are trying to access, not like number which was passed in the method as an argument
    end

    def shut_down
        @current_speed = 0
        puts "Lets park this bad boy"
    end

    def spray_paint(c)
        self.color = c
        puts "Your car have been painted #{@color}"
    end
end

bmw = MyCar.new(2016, 'black', 'X3')
bmw.speed_up(10)
bmw.current_speed

bmw.spray_paint('White')
puts bmw.color
puts bmw.year

puts MyCar.gas_mileage(12, 351)
puts bmw