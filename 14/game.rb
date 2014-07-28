require_relative 'player'
require_relative 'game_turn'

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
      puts "*" * 50
      GameTurn.take_turn(player)
      #puts player
    end
    puts "*" * 50
  end
end 
