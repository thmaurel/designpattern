# On veut créer un modèle Jungle

# Lorsqu'on crée la jungle, on veut décider du nombre de lions dedans
# et qu'ils soient créés automatiquement.

# ex: Jungle.new(5)
# => crée une jungle et 5 lions (et stocker les 5 lions ds la jungle)

# Ajouter des plantes à la jungle pour pouvoir créer des lions ac des arbres
# ou des crocodiles ac des algues sans rajouter de méthode aux factories concrètes.

# Ajouter un contrôle pour être sûr de créer des lions ac des arbres (resp croco/algues)
# et qu'on ne puisse pas créer des lions ac des algues.

class Jungle
  def initialize(nb_animals)
    @animals = []
    nb_animals.times do |i|
      @animals << new_animal("Animal #{i + 1}")
    end
  end

  def one_day
    @animals.each do |animal|
      animal.eat("food")
      animal.speak
    end
  end
end

class LionsJungle < Jungle
  def new_animal(name)
    Lion.new(name)
  end
end

class CrocodilesJungle < Jungle
  def new_animal(name)
    Crocodile.new(name)
  end
end

# On veut créer un modèle Lion
class Lion
  def initialize(name)
    @name = name
  end

  def eat(food)
    puts "#{@name} eats #{food}"
  end

  def speak
    puts 'Roaarrr'
  end
end

class Crocodile
  def initialize(name)
    @name = name
  end

  def eat(food)
    puts "#{@name} eats #{food}"
  end

  def speak
    puts '...'
  end
end

jungle = CrocodilesJungle.new(3)
jungle.one_day


# L'objectif est que notre modèle Jungle puisse créer des jungles ac tous types
# d'animaux

# ???
# => une jungle ac 5 crocodiles

# ???
# => une jungle ac 5 lions
