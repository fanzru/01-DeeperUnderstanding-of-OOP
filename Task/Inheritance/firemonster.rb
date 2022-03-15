require_relative 'monster.rb'

class FireMonster < Monster
  
  def initialize(name, hitpoint, attack_point)
    super(name, hitpoint, attack_point)
  end
  
  def attack(monster)
    if @hit.include? "frozen"
      puts "#{@name} is in frozen state, can't attack"
    else
      if @total_turn == 0
        monster.total_turn += 1
        monster.hit << "burnt"
        monster.delay_damage = (0.4*@attack_point)
      else
        monster.take_damage(@attack_point)
      end
      take_damage(0.5 * monster.attack_point)
      puts "#{@name} uses elemental attack on enemy's #{monster.name}, deals 0 damage, takes #{0.5 * monster.attack_point} damage, inflict burnt status for 3 turns with 32.0 damage each turn"
    end
  end

  
end