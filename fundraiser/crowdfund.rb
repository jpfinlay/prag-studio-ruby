
def time
  Time.now().strftime("%H:%M on %d/%m/%Y")
end

def project(name,amount=100)
  "#{name.capitalize} has raised $#{amount} as of #{time}"
end

puts project("crohn's research lab",1000)
