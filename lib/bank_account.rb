class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name)
    @name = name 
    @balance = 1000 
    @status = "open"
  end 
  
  def deposit(amount)
    @balance += amount 
  end
  
  def balance
  "Your balance is $#{@balance}."
  end
  
end
