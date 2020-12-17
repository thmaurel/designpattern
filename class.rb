class Lion
  @@number_of_lions = 0
  attr_accessor :name
  def initialize(name)
    @name = name
    @@number_of_lions += 1
  end

  def speak
    p self
    puts "ROARRRR"
  end

  def self.number?
    puts "There are currently #{@@number_of_lions} lions !"
  end
end

lion = Lion.new("Lion")
lion.speak



