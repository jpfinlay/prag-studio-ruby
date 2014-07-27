require_relative 'project'

describe Project do
  
  it "has a title in BLOCK CAPITALS" do
    p = Project.new("a new project",10,100)
    expect(p.name).to eq("A NEW PROJECT")
  end
  
  it "adds 25 to the funding total" do
    p = Project.new("a new project",10,100)
    p.add_funds
    expect(p.funding).to eq(10 + 25)
  end

  it "subtracts 15 from the funding total" do
    p = Project.new("a new project",10,100)
    p.remove_funds
    expect(p.funding).to eq(10 - 15)
  end

  it "calcuates the funding needed by subtracting the current funding from the target funding" do
    p = Project.new("a new project",10,100)
    p.funding_needed
    expect(p.funding_needed).to eq(100 - 10)
  end

  it "has a string representation" do
    p = Project.new("a new project",10,100)
    expect(p.to_s).to eq("Project #{p.name} has $#{p.funding} in funding towards a goal of $#{p.target}.\nFunding required: #{p.funding_needed}.")
  end
end
