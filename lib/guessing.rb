@number = rand(1..100)
@count = 0

def playTurn
  selectedNum = Integer(gets.chomp)
  if selectedNum > @number
    p "The number is lower than #{selectedNum}.  Guess again"
    @count += 1
    playTurn
  elsif selectedNum < @number
    p "The number is higher than #{selectedNum}.  Guess again"
    @count += 1
    playTurn
  elsif selectedNum == @number
    p "You got it in #{@count} tries"
  else
    p 'invalid. Input again'
    playTurn
  end
rescue ArgumentError, TypeError
  p 'invalid. Input again'
  playTurn
end

p 'Guess a number between 1 and 100'
playTurn
