class Animal

  def initialize(name)
    @name = name
  end

  def run
    puts "#{@name} is running..."
  end

  def jump
    puts "#{@name} is jumping..."
  end

end

class Cat < Animal
  def initialize
    super 'Kiska'
  end

  def say_meow
    puts 'Meeeeeooow!'
  end
end

class Dog < Animal
    def initialize
    super 'Sharik'
  end

  def bark
    puts 'Woof-woof!'
  end
end

cat = Cat.new
cat.run
cat.say_meow

dog = Dog.new
dog.jump
dog.bark