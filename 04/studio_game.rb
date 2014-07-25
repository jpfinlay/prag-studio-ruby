#The game started on Tuesday 03/06/2012 at 10:43AM

t = Time.now

date = t.strftime("%A %d/%m/%Y")
time = t.strftime("%I:%M %p")

puts "The game started on #{date} at #{time}"

name1 = "larry"
name2 = "curly"
name3 = "moe"
name4 = "shemp"

health1 = 60
health2 = 125
health3 = 100
health4 = 90

puts "#{name1.capitalize} has a health of #{health1}." 
puts "#{name2.upcase} has a health of #{health2}." 
puts "#{name3.capitalize} has a health of #{health3}".center(50, '*') 
puts "#{name4.capitalize}".ljust(30, '.') + " #{health4} health" 

