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

p1 = Project.new("crohn's research lab",10000,1000000)
p2 = Project.new("ultralight mudguards",1000,5000)

puts p1
puts p2
puts p1.remove_funds
puts p2.add_funds
puts p1
puts p2
