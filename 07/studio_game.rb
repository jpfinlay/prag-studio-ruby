class Player
  def initialize(name, health=100)
    @name = name
    @health = health
  end

  def to_s
    "I'm #{@name} with a health of #{@health}"
  end

  def blam
    @health += 15
  end

  def w00t
    @health -= 10
  end

end

player1 = Player.new("curly",125)
puts player1
player2 = Player.new("larry",60)
puts player2
player3 = Player.new("moe")
puts player3
player3.blam
puts player3
player3.w00t
puts player3
