require_relative 'project'
require_relative 'die'
require_relative 'pledge'

module FundingRound

  def self.one_round(project)
    die = Die.new
    number_rolled = die.roll
    number_rolled.even? ? project.add_funds : project.remove_funds
   
    pledge = PledgePool.random_pledge
    puts "\nProject #{project.name} received a #{pledge.name} pledge worth $#{pledge.amount}."
  end

end

