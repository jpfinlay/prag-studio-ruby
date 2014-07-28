require_relative 'FundRequest'

class Project
  attr_reader :funding, :target
  attr_accessor :name

  def initialize(name, funding=0, target=10)
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

  def funding_outstanding
    @target - @funding
  end

  def fully_funded?
    funding_outstanding <= 0
  end

  def to_s
    "Project #{@name} has $#{@funding} in funding towards a goal of $#{@target}.\nFunding required: #{funding_outstanding}."
  end
end
