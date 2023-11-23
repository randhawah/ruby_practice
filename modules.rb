#module inheritance is also called interface inheritance
# When to use class vs Interface Inheritance?
# 1. You can only subclass (class inheritance) from one class. You can mix in as many modules (interface inheritance) as you'd like. 
# 2. If there's an "is-a" relationship, class inheritance is usually the correct choice. If there's a "has-a" relationship, 
#       interface inheritance is generally a better choice. For example, a dog "is an" animal and it "has an" ability to swim. 
# 3. You cannot instantiate modules. In other words, objects cannot be created from modules.


module Swimmable
    def swim
    "I'm swimming!"
    end
end

class Animal; end

class Fish < Animal
    include Swimmable         # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
    include Swimmable         # mixing in Swimmable module
end


sparky = Dog.new
neemo  = Fish.new
paws   = Cat.new

puts sparky.swim                 # => I'm swimming!
puts neemo.swim                  # => I'm swimming!
puts paws.swim                   # => NoMethodError: undefined method `swim' for #<Cat:0x007fc453152308>