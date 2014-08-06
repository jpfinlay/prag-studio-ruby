require_relative 'funding_round'
require_relative 'pledge'

class FundRequest
  def initialize(name)
    @name = name
    @projects = []
  end

  def add_project(project)
    @projects << project
  end

  def request_funding(rounds)
    puts "There are #{@projects.size} projects that need funding:"
    @projects.each do |project|
      puts "\t#{project}"
    end

    pledges = PledgePool::PLEDGES
    puts "\nThere are #{pledges.size} possible pledge amounts:"
    pledges.each do |pledge|
      puts "A #{pledge.name} pledge is worth #{pledge.amount}"
    end

    1.upto(rounds) do |round| 
      puts "\nFunding round #{round} out of #{rounds}:"
      @projects.each do |project|
        FundingRound.one_round(project)
      
        puts project
      end
    end
  end

  def print_stats
    funded, unfunded = @projects.partition { |project| project.fully_funded? }
    puts "\nThere are #{funded.size} fully funded projects in the category #{@name}:"
    funded.each do |project|
      puts "\t#{project.name} (#{project.funding})"
    end
    puts "There are #{unfunded.size} unfunded projects in the category #{@name}:"
    unfunded.each do |project|
      puts "\t#{project.name} (#{project.funding})"
    end
    puts "\nProjects still requiring funding contributions (sorted by amount outstanding)"
    unfunded.sort.each do |project|
      puts "\t#{project.name} (#{project.funding_outstanding})"
    end
  end
end
