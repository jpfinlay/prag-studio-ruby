require_relative 'project'
require_relative 'die'

module FundingRound

  def self.one_round(project)
    die = Die.new
    number_rolled = die.roll
    number_rolled.even? ? project.add_funds : project.remove_funds
  end

end

