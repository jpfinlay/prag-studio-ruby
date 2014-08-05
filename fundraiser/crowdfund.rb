require_relative 'project'

p1 = Project.new("crohn's research lab",150,200)
p2 = Project.new("mental health awareness campaign",100,150)
p3 = Project.new("diabetes awareness campaign",500, 600)

vcfriendly = FundRequest.new("Medical Projects")
vcfriendly.add_project(p1)
vcfriendly.add_project(p2)
vcfriendly.add_project(p3)
vcfriendly.request_funding(3)
vcfriendly.print_stats
