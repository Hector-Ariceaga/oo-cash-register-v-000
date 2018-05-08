class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
   self.total = 0
   self.discount = discount
  end
    
  def add_item(title, price, quantity = 0)
    self.total += price*quanity
  end
end
