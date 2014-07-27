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
game1.play


player4 = Player.new("alvin",125)
player5 = Player.new("simon",60)
player6 = Player.new("theodore")

players = [player4, player5, player6]

game2 = Game.new("Chipmonks")
game2.add_player(player4)
game2.add_player(player5)
game2.add_player(player6)
game2.play
