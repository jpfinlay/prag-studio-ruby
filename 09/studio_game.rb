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


player1 = Player.new("curly",125)
player2 = Player.new("larry",60)
player3 = Player.new("moe")

players = [player1, player2, player3]

puts "There are #{players.size} players in the game:"
players.each do |p|
  p.blam
  puts "#{p.name} got blammed!"
  p.w00t
  puts "#{p.name} got w00ted!"
  p.w00t
  puts "#{p.name} got w00ted!"
  puts p
end

