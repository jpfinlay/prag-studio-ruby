require_relative 'player'
require_relative 'die'

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
      die = Die.new
      number_rolled = die.roll_number
      case number_rolled
      when 1..2
        player.blam
        puts player
      when 3..4 
        puts "#{player.name} was skipped"
      else
        player.w00t
        puts player
      end
    end
  end 
end
