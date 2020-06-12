require 'pry'
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
if self.sender.balance > 50 && self.sender.status == "open"
self.sender.balance -= self.amount
self.receiver.balance += self.amount
self.amount = 0
self.status = "complete"
else
"Transaction rejected. Please check your account balance."
end
end

end
