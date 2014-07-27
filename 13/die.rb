class Die
  attr_reader :number

  def initialize
    @number = roll_number
  end

  def roll_number
    @number = rand(1..6)
  end
end
