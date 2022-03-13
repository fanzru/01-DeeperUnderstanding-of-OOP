require_relative 'monster.rb'

class Player
  
  def initialize(name,monsters)
    @name = name
    @monsters = monsters
  end
  
  def print_monster
    print monsters.join(", ")
    puts "\n\n"
  end

  def attack_monster(monster_attacker,monster_defender)
    monster_attacker.attack(monster_defender)
    puts "#{@name} #{monster_attacker.name} attacks enemy's #{monster_defender.name}, deals #{monster_attacker.attack_point.to_f} damage and takes #{0.5 * monster_defender.attack_point} damage"
  end

  attr_accessor :monsters, :name
end
