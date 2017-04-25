def add(x, y)
  "Your result is #{x + y}"
end

def sub(x, y)
  "Your result is #{x - y}"
end

def mult(x, y)
  "Your result is #{x * y}"
end

def div(x, y)
  "Your result is #{x / y}"
end

p 'What calculation would you like to do? (add, sub, mult, div)'
funcSelect = gets.chomp

if funcSelect != 'add' && funcSelect != 'sub' && funcSelect != 'mult' && funcSelect != 'div'
  p 'Invalid'

else
  p 'test'
  p 'What is number 1?'
  num1Select = gets.chomp.to_i
  p 'What is number 2?'
  num2Select = gets.chomp.to_i

  p add(num1Select, num2Select) if funcSelect == 'add'
  p sub(num1Select, num2Select) if funcSelect == 'sub'
  p mult(num1Select, num2Select) if funcSelect == 'mult'
  p div(num1Select, num2Select) if funcSelect == 'div'
end
