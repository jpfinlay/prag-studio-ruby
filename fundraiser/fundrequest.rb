require_relative 'die'

class FundRequest
  def initialize(name)
    @name = name
    @projects = []
  end

  def add_project(project)
    @projects << project
  end

  def request_funding
    puts "There are #{@projects.size} projects that need funding:"
    @projects.each do |project|
      puts project
    end

    @projects.each do |project|
      die = Die.new
      number_rolled = die.roll
      
      number_rolled.even? ? project.add_funds : project.remove_funds 
      
      puts project
    end
  end
end
