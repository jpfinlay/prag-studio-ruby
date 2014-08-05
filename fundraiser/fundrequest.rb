require_relative 'funding_round'

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
      puts project
    end

    1.upto(rounds) do |round| 
      puts "Funding round #{round} out of #{rounds}:"
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
  end
end
