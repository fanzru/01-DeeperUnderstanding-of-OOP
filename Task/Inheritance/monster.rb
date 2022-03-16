class Monster
  attr_reader :name, :attack_point
  attr_accessor :hit, :total_turn, :delay_damage
  
  def initialize(name, hitpoint, attack_point)
    @name = name
    @hitpoint = hitpoint
    @attack_point = attack_point
    @hit = []
    @total_turn = 0
    @delay_damage = 0
  end

  def to_s
    if @hit.empty?
      if @hitpoint > 0
          "#{@name}[#{@hitpoint}]"
        else
          "#{@name}[X]"
        end
    else
      if @hitpoint > 0
        "#{@name}[#{@hitpoint}][#{@hit[0]}]"
      else
        "#{@name}[X]"
      end
    end
  end

  def attack(monster)
    if @hit.include? "frozen"
      puts "#{@name} is in frozen state, can't attack"
    else
      monster.take_damage(@attack_point)
      take_damage(0.5 * monster.attack_point)
      puts "#{@name} attacks enemy's #{monster.name}, deals #{@attack_point.to_f} damage and takes #{0.5 * monster.attack_point} damage"
    end
  end

  def take_damage(amount)
    @hitpoint -= amount
  end

  def take_delay_damage()
    @hitpoint -= @delay_damage
    @total_turn += 1
  end

  def refresh_damage()
    if @hit.include? "frozen"
      @hit.delete("frozen")
    end
    if @total_turn == 3
      take_delay_damage()
      @delay_damage = 0
      @hit.delete("burnt")
    end
  end
end
