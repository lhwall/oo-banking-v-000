class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount 
    @status = "pending"
  end 
  
  def valid?
    @sender.valid? == true && @receiver.valid? == true 
  end
  
  def execute_transaction
    if self.valid && @status == "pending"
        @sender.balance -= amount 
        @receiver.balance += amount 
        @status = "complete"
      end
    else 
      ""
  end
  
  
end
