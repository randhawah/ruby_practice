class GoodDog
    attr_accessor :name, :height, :weight
    @@number_of_dogs = 0

    def initialize(n, h, w)
        @@number_of_dogs += 1
        @name = n
        @height = h
        @weight = w
    end

    def self.what_am_i
        "I'm a GoodDog Class!"
    end

    def self.total_number_of_dogs
        @@number_of_dogs
    end

    def speak
    "#{name} says arf!"
    end

    def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
    end

    def info
    "#{name} weighs #{weight} and is #{height} tall."
    end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info

bravo = GoodDog.new('Bravo', '15 inches', '30 lbs')

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info
puts sparky.speak
puts GoodDog.what_am_i
puts GoodDog.total_number_of_dogs