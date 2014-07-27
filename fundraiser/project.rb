require_relative 'FundRequest'

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
