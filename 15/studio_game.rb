require_relative 'player'
require_relative 'game'

player1 = Player.new("curly",125)
player2 = Player.new("larry",60)
player3 = Player.new("moe")

players = [player1, player2, player3]

game1 = Game.new("Knuckleheads")
game1.add_player(player1)
game1.add_player(player2)
game1.add_player(player3)
game1.play(4)
game1.print_stats
