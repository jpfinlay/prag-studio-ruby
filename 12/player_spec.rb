require_relative 'player'

# Have not used before block as use of instance variables results
# in failing tests when they should pass

describe Player do

  before(:each) do
    @initial_health = 150
    @player = Player.new("moe",@initial_health)
  end

  it "has a capitalized name" do
    #player = Player.new("moe")
    #expect(player.name).to eq("Moe")
    expect(@player.name).to eq("Moe")
  end
  
  it "has an initial health" do
    #player = Player.new("moe")
    #expect(player.health).to eq(100)
    expect(@player.health).to eq(150)
  end

  it "has a string representation" do
    #player = Player.new("moe")
    #expect(player.to_s).to eq("I'm Moe with a health of 100 and a score of 103")
    expect(@player.to_s).to eq("I'm Moe with a health of 150 and a score of 153")
  end

  it "increases health by 15 when w00ted" do
    #player = Player.new("moe")
    @player.w00t

    expect(@player.health).to eq(150 + 15)
  end

  it "decreases health by 10 when blammed" do
    @player.blam

    expect(@player.health).to eq(150 - 10)
  end


  context "created with a default health value" do

    before(:each) do
      @player = Player.new("jamie")
    end

    it "has a health of 100" do
      expect(@player.health).to eq(100)
    end
  end
end
