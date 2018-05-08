class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
   self.total = 0
   self.discount = discount
  end
    
  def add_item(title, price, quantity = 1)
    self.total += price*quantity
  end
  
  def apply_discount
    self.total *= (1.0 - (self.discount/100)) 
    return "After the discount, the total comes to $#{self.total}."
  end
end
