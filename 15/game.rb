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
  
  def play(rounds)
    puts "There are #{@players.size} players in #{@title}:" 
    @players.each do |p| 
      puts p
    end

    1.upto(rounds) do |round|
      puts "\nRound #{round} of #{rounds}:"
      @players.each do |player|
        puts "*" * 50
        GameTurn.take_turn(player)
        #puts player
      end
    end
    puts "*" * 50
  end

  def name_health_stats(player)
    puts "#{player.name}".ljust(20, '.') + "(#{player.health})"
  end

  def print_stats
    strong, wimpy = @players.partition { |player| player.strong? }
    puts "\n#{@title} Statistics:\n\n#{strong.size} strong players:\n"
    strong.each do |player|
      #puts "\t#{player.name} (#{player.health})"
      name_health_stats(player)
    end
    puts "\n#{wimpy.size} wimpy players:\n"
    wimpy.each do |player|
      #puts "\t#{player.name} (#{player.health})"
      name_health_stats(player)
    end

    # Sorts players by highest score first
    #sorted_players = @players.sort { |a,b| b.score <=> a.score }

    puts "\n#{@title} High Scores:\n"
    @players.sort.each do |player|
      puts "#{player.name}".ljust(20, '.') + "#{player.score}"
    end
  end
end 
