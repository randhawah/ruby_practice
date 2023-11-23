class Animal
    def speak
    "Hello!!"
    end
end

class GoodDog < Animal
end

class Cat < Animal
end

sparky = GoodDog.new
paws = Cat.new
puts sparky.speak           # => Hello!!
puts paws.speak             # => Hello!!
#test commit to see if it VS Code is using the right acount to commit changes