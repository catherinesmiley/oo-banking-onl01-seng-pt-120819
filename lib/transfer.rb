# require 'pry'

# class Transfer 
  
#   attr_accessor :status
#   attr_reader :sender, :receiver, :amount
  
#   def initialize(sender, receiver, amount)
#     @sender = sender 
#     @receiver = receiver 
#     @status = "pending"
#     @amount = 50
#   end 
  
#   def valid? 
#     sender.valid? && receiver.valid?
#   end 
  
#   def execute_transaction
#     if !self.valid? || self.status == "complete"
#       self.status = "rejected"
#       sender.close_account
#       "Transaction rejected. Please check your account balance."
#     else 
#       sender.balance -= self.amount
#       receiver.balance += self.amount
#       self.status = "complete"
#     end 
#   end 
  
#   def reverse_transfer
#     if self.status == "complete"
#       sender.balance += self.amount 
#       receiver.balance -= self.amount 
#       self.status = "reversed"
#     end
#   end 
# end 




























class Transfer 
  
  attr_reader :sender, :receiver, :amount 
  attr_accessor :status 
  
  def initialize(sender, receiver, amount = 50)
    @sender = sender 
    @receiver = receiver 
    @status = "pending" 
    @amount = amount 
  end 
  
  def valid?
    sender.valid? && receiver.valid? 
  end 
  
  def execute_transaction
    if valid? || self.status = "complete"
      sender.close_account 
      "Transaction rejected. Please check your account balance."
      self.status = "rejected"
    else 
      sender.balance -= self.amount 
      receiver.balance += self.amount 
      self.status = "complete"
    end 
  end 
  
end 