require_relative 'game'
require_relative 'die'

describe Game do

  before(:each) do
    @game = Game.new("Knuckleheads")

    @initial_health = 100
    @player = Player.new("moe", @initial_health)

    @game.add_player(@player)
  end

  it "w00ts a player if a high number is rolled" do
    allow_any_instance_of(Die).to receive(:roll).and_return(5)

    @game.play

    expect(@player.health).to eq(@initial_health + 15)
  end

  it "skips a player if a medium number is rolled" do
    allow_any_instance_of(Die).to receive(:roll).and_return(3)

    @game.play

    expect(@player.health).to eq(@initial_health)
  end

  it "blams a player if a low number is rolled" do

    allow_any_instance_of(Die).to receive(:roll).and_return(1)

    @game.play

    expect(@player.health).to eq(@initial_health - 10)
  end
end
