class Player
  attr_reader :health
  attr_accessor :name

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  
  def name=(new_name)
    @name = new_name.capitalize
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}"
  end

  def blam
    @health -= 10
  end

  def w00t
    @health += 15
  end

  def score
    @health + @name.length
  end

end

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player 
  end
  
  def play
    puts "There are #{@players.size} players in #{@title}:" 
    @players.each do |p| 
      puts p
    end

    @players.each do |player|
      player.blam
      player.w00t
      player.w00t
      puts player
    end
  end 
end

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
