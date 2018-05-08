class CashRegister
  attr_accessor :total, :discount
  
  def initialize(total, discount = 0)
   self.total = 0
   self.discount = discount
  end
    
end
