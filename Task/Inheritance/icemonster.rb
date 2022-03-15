require_relative 'monster.rb'

class IceMonster < Monster
  attr_accessor :total_turn
  
  def initialize(name, hitpoint, attack_point)
    super(name, hitpoint, attack_point)
    @total_turn = 0
  end
  
  def attack(monster)
    if @hit.include? "frozen"
      puts "#{@name} is in frozen state, can't attack"
    else
      if @total_turn == 0
        monster.total_turn += 1
        monster.hit << "frozen"
        monster.take_damage(0.8*@attack_point)
      else
        monster.take_damage(@attack_point)
      end
      take_damage(0.5 * monster.attack_point)
      puts "#{@name} uses elemental attack on enemy's #{monster.name}, deals #{(0.8*@attack_point).to_f} damage, takes #{0.5 * monster.attack_point} damage, inflict frozen status for 1 turns with 0 damage each turn"
    end
  end

  
  
end