class Account
  attr_accessor :balance
  def initialize(balance)
    @balance = balance
  end
  def start
    p "Your current balance is #{@balance}."
    p 'What would you like to do? (deposit, withdraw, check_balance)'
    case gets.chomp
    when "deposit"
      p "How much would you like to deposit?"
      @balance += gets.chomp.to_i
      p "Your current @balance is #{@balance}."
      verify
    when "withdraw"
      p "How much would you like to withdraw?"
      withdraw = gets.chomp.to_i
      if withdraw <= balance
        @balance -= withdraw
        p "Your current @balance is #{@balance}."
        verify
      else
        p "Not enough funds"
        p "Your current @balance is #{@balance}."
        verify
      end
    when "check_balance"
      p "Your current balance is #{@balance}."
      verify
    else
      p "Invalid"
      start
    end
  end
  def verify
    p "Are you done?"
    case gets.chomp
    when "no"
      start
    when "yes"
    else
      p "Invalid"
    end
  end
end

account = Account.new(4000)
account.start
