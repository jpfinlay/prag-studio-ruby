require_relative 'game'

describe Game do

  before(:each) do
    @game = Game.new("Knuckleheads")

    @initial_health = 100
    @player = Player.new("moe", @initial_health)

    @game.add_player(@player)
  end

  it "w00ts a player if a high number is rolled" do
    #GameTurn.stub(:roll_die).and_return(5)
    allow(GameTurn).to receive(:roll_die) { 5 }

    GameTurn.take_turn(@player)

    expect(@player.health).to eq(@initial_health + 15)
  end

  it "skips a player if a medium number is rolled" do
    #GameTurn.stub(:roll_die).and_return(3)
    allow(GameTurn).to receive(:roll_die) { 3 }

    GameTurn.take_turn(@player)

    expect(@player.health).to eq(@initial_health)
  end

  it "blams a player if a low number is rolled" do
    #GameTurn.stub(:roll_die).and_return(1)
    allow(GameTurn).to receive(:roll_die) { 1 }

    GameTurn.take_turn(@player)

    expect(@player.health).to eq(@initial_health - 10)
  end
end
