require_relative 'pledge'

describe Pledge do

  before(:each) do
    @pledge = Pledge.new(:silver, 75)
  end

  it "has a name attribute" do
    expect(@pledge.name).to eq(:silver)
  end

  it "has an amount attribute" do
    expect(@pledge.amount).to eq(75)
  end

end

describe PledgePool do

  it "has three types" do
    expect(PledgePool::PLEDGES.size).to eq(3)
  end

  it "has a bronze pledge worth 25 dollars" do
    expect(PledgePool::PLEDGES[0]).to eq(Pledge.new(:bronze, 50))
  end

  it "has a silver pledge worth 50 dollars" do
    expect(PledgePool::PLEDGES[1]).to eq(Pledge.new(:silver, 75))
  end
  
  it "has a gold pledge worth 100 dollars" do
    expect(PledgePool::PLEDGES[2]).to eq(Pledge.new(:gold,100))
  end

  it "returns a random pledge" do
    pledge = PledgePool.random_pledge

    expect(PledgePool::PLEDGES).to include(pledge)
  end

end
