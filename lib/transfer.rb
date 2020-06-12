class Transfer
  attr_accessor :sender, :receiver, :status, :amount

def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = "pending"
end

def valid?
if @sender.valid? && @receiver.valid?
  return true
else
  return false
end
end

def execute_transaction
@sender.balance -= @amount
@receiver.balance += @amount
@amount = 0
end

end
