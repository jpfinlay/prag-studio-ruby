require_relative 'project'

describe Project do
  before(:each) do
    @initial_funding = 100
    @target = 1000
    @project = Project.new("new project", @initial_funding, @target)
  end

  it "has a title in BLOCK CAPITALS" do
    expect(@project.name).to eq("NEW PROJECT")
  end
  
  it "adds 25 to the funding total" do
    @project.add_funds
    expect(@project.funding).to eq(100 + 25)
  end

  it "subtracts 15 from the funding total" do
    @project.remove_funds
    expect(@project.funding).to eq(100 - 15)
  end

  it "calcuates the funding needed by subtracting the current funding from the target funding" do
    @project.funding_needed
    expect(@project.funding_needed).to eq(1000 - 100)
  end

  it "has a string representation" do
    expect(@project.to_s).to eq("Project #{@project.name} has $#{@project.funding} in funding towards a goal of $#{@project.target}.\nFunding required: #{@project.funding_needed}.")
  end
end
