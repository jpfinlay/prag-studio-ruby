class Project
  attr_reader :funding, :target
  attr_accessor :name

  def initialize(name, funding, target)
    @name = name.upcase
    @funding = funding
    @target = target
  end

  def add_funds
    @funding += 25
  end

  def remove_funds
    @funding -= 15
  end

  def funding_needed
    @target - @funding
  end

  def to_s
    "Project #{@name} has $#{@funding} in funding towards a goal of $#{@target}.\nFunding required: #{funding_needed}."
  end
end

class Container
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
      project.add_funds
      puts project
    end
  end
end

p1 = Project.new("crohn's research lab",10000,1000000)
p2 = Project.new("mental health awareness campaign",1000,5000)
p3 = Project.new("diabetes awareness campaign",1500, 10000)

vcfriendly = Container.new("Medical Projects")
vcfriendly.add_project(p1)
vcfriendly.add_project(p2)
vcfriendly.add_project(p3)
vcfriendly.request_funding
