require_relative 'game'

module GameTurn
  def self.roll_die
    rand(1..6)
  end
  
  def self.take_turn(player)
    case roll_die
    when 1..2
      player.blam
      puts "#{player.name} was blammed! Health: #{player.health}. Score: #{player.score}."
    when 3..4
      puts "#{player.name} was skipped! Health: #{player.health}. Score: #{player.score}."
    else
      player.w00t
      puts "#{player.name} was w00ted! Health: #{player.health}. Score: #{player.score}."
    end

    treasure = TreasureTrove.random_treasure 
    puts "\n#{player.name} found a #{treasure.name} worth #{treasure.score}"
  end
end
