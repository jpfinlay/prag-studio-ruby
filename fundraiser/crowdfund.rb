require_relative 'project'

p1 = Project.new("crohn's research lab",10000,1000000)
p2 = Project.new("mental health awareness campaign",1000,5000)
p3 = Project.new("diabetes awareness campaign",1500, 10000)

vcfriendly = FundRequest.new("Medical Projects")
vcfriendly.add_project(p1)
vcfriendly.add_project(p2)
vcfriendly.add_project(p3)
vcfriendly.request_funding(3)
