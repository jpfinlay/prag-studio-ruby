require_relative 'fundrequest'

describe "FundRequest" do
  
  before(:each) do
    @fundrequest = FundRequest.new("VC-Friendly startup projects")

    @funding = 1000
    @target = 5000

    @project = Project.new("medical project abc", @funding, @target)

    @fundrequest.add_project(@project)
  end

  it "adds funds if an even number is rolled" do
    allow_any_instance_of(Die).to receive(:roll).and_return(4) 

    @fundrequest.request_funding(2)

    expect(@project.funding).to eq(@funding + (2 * 25))
  end

  it "removes funds if an odd number is rolled" do
    allow_any_instance_of(Die).to receive(:roll).and_return(3) 

    @fundrequest.request_funding(2)

    expect(@project.funding).to eq(@funding - (2 * 15))
  end
end
