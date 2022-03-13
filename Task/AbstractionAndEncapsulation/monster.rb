class Monster
  def initialize(name , hitpoint, attack_point)
    @name = name
    @hitpoint = hitpoint
    @attack_point = attack_point
  end
  
  def to_s
    if @hitpoint > 0
      "#{@name}[#{@hitpoint}]"
    else
      "#{@name}[X]"
    end
  end

  def attack(monster)
    monster.take_damage(@attack_point)
    take_damage(0.5 * monster.attack_point)
  end
  
  def take_damage(amount)
    @hitpoint -= amount
  end
  attr_accessor :name
  attr_accessor :hitpoint
  attr_accessor :attack_point
  
end
