class Player
  attr_accessor :name, :life_points
  @@all_players = []

  def initialize(name)
    @name = name
    @life_points = 10
    @@all_players << self
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end 
  
  def gets_damage(damage)
    @life_points -= damage    # inflige des dommages
    if @life_points <= 0      # vérifie sur PV sont à 0
      puts "#{@name} a été tué !"   # si PV = 0, j'informe
    end
  end

def compute_damage 
     return rand(1..6)
  end

 def  attacks (player)
  puts "le joueur #{@name} attaque le joueur #{player.name} ! "
  damage = compute_damage
  puts " Il lui inflige #{damage} points de dégats"
  player.gets_damage(damage)
 end
  
end

class HumanPlayer < Player
   attr_accessor :weapon_level 

  def initialize(name)
    @name = name
    @life_points = 100
    @weapon_level = 1
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
  end 

def compute_damage
    rand(1..6) * @weapon_level
  end


def search_weapon
    weapon_level = rand(1..6) # lancer de dé sera égal au niveau de la nouvelle arme trouvée.
    puts "Tu as trouvé une arme de niveau #{weapon_level}"
       if weapon_level > @weapon_level
      @weapon_level = weapon_level
      puts "weiii! elle la best que ton arme actuelle : tu la prends."
    else
      puts "shit... elle n'est pas mieux que ton arme actuelle..."
    end
  end


end
