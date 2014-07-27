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
      project.add_funds
      puts project
    end
  end
end
