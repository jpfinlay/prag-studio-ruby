class Project
  def initialize(name, initial, target)
    @name = name
    @initial = initial
    @target = target
  end

  def add_funds
    @initial += 25
  end

  def remove_funds
    @initial -= 15
  end

  def to_s
    "Project #{@name.upcase} has $#{@initial} in funding towards a goal of $#{@target}."
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
