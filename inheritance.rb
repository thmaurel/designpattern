class Animal
  def initialize(name)
    @name = name
  end

  def eat(food)
    puts "#{@name} eats #{food}."
  end

  def speak
    puts "I'm an animal"
  end

  def sleep
    puts "ZZZZZZ"
  end
end

class Lion < Animal
  def eat(food)
    super(food)
    puts "ROARRRR"
  end

  def speak
    puts "ROARRR"
    super
    puts "ROARRR"
  end
end

class Tiger < Animal
end

animal = Animal.new('Animal')
animal.sleep
# lion.speak
