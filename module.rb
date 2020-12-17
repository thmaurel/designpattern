module Animal
  def eat(food)
    puts "#{@name} has eaten #{food}"
  end

  def test
    puts 'toto'
  end
end

module Livingbeing
  def eat(food)
    puts "#{@name} a mangé #{food}"
  end
end

class Lion
  include Livingbeing
  include Animal
  def initialize(name)
    @name = name
  end
end

lion = Lion.new('Lion')
