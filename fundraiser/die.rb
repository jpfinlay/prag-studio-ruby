class Die
  attr_reader :roll
  
  def initialize
    roll
  end

  def roll
    rand(1..6)
  end
end

if __FILE__ == $0
  die = Die.new
  puts die.roll
  puts die.roll
  puts die.roll
end
