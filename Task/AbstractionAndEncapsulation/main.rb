require_relative 'monster.rb'
require_relative 'player.rb'

phpkachu = Monster.new('Phpkachu', 80, 50)
sqlrtle = Monster.new('Sqlrtle', 100, 20)
cppmander = Monster.new('Cppmander', 40, 80)
bashtoise = Monster.new('Bashtoise', 60, 60)
torterraform = Monster.new('Torterraform', 120, 10)

puts 'Player 1:'
player1 = Player.new("Player 1's",[phpkachu,cppmander.clone,torterraform])
player1.print_monster()

puts 'Player 2:'
player2 = Player.new("Player 2's",[sqlrtle,cppmander.clone,bashtoise])
player2.print_monster()

puts '=======================Turn 1======================='
puts
player1.attack_monster(player1.monsters[0],player2.monsters[1])
puts
puts 'Player 1:'
player1.print_monster()
puts 'Player 2:'
player2.print_monster()

player2.attack_monster(player2.monsters[0],player1.monsters[1])
puts
puts 'Player 1:'
player1.print_monster()
puts 'Player 2:'
player2.print_monster()
