# On veut créer un modèle Jungle

# Lorsqu'on crée la jungle, on veut décider du nombre de lions dedans
# et qu'ils soient créés automatiquement.

# ex: Jungle.new(5)
# => crée une jungle et 5 lions (et stocker les 5 lions ds la jungle)

# Ajouter des plantes à la jungle pour pouvoir créer des lions ac des arbres
# ou des crocodiles ac des algues sans rajouter de méthode aux factories concrètes.

# permettre à la classe Jungle de créer toutes les combinaisons d'animaux/plantes possibles

# Ajouter un contrôle pour être sûr de créer des lions ac des arbres (resp croco/algues)
# et qu'on ne puisse pas créer des lions ac des algues.

class Jungle
  def initialize(nb_animals, nb_plants)
    @animals = []
    nb_animals.times do |i|
      @animals << new_organism(:animal ,"Animal #{i + 1}")
    end
    @plants = []
    nb_plants.times do |i|
      @plants << new_organism(:plant ,"Plant #{i + 1}")
    end
  end

  def one_day
    @animals.each do |animal|
      animal.eat("food")
      animal.speak
    end
    @plants.each do |plant|
      plant.grow
    end
  end

  def new_organism
    # crée les instances d'animaux et de plantes que l'utilisateur souhaite créer.
  end
end

class LionsTreesJungle < Jungle
  def new_organism(type, name)
    return Lion.new(name) if type == :animal
    return Tree.new(name) if type == :plant
  end
end

class CrocodilesAlgaesJungle < Jungle
  def new_organism(type, name)
    return Crocodile.new(name) if type == :animal
    return Algae.new(name) if type == :plant
  end
end


class Plant
  def initialize(name)
    @name = name
  end

  def grow
    puts "#{@name} is growing !"
  end
end

class Tree < Plant
end

class Algae < Plant
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

jungle = CrocodilesAlgaesJungle.new(3, 5)
p jungle


# L'objectif est que notre modèle Jungle puisse créer des jungles ac tous types
# d'animaux

# ???
# => une jungle ac 5 crocodiles

# ???
# => une jungle ac 5 lions
