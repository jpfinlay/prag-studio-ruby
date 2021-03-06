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
    "\tI'm #{@name} with a health of #{@health} and a score of #{score}"
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

  def strong?
    @health > 100
  end

  def <=>(other)
    other.score <=> score 
  end

end

if __FILE__ == $0
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end
