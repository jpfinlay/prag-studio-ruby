class Calculator

  def initialize(n,m)
    @num1 = n
    @num2 = m
  end

  def add
    @num1 + @num2
  end

  def subtract
    @num1 - @num2
  end
end

calc = Calculator.new(20,11)
puts calc.add
puts calc.subtract
