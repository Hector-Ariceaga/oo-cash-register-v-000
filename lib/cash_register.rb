class CashRegister
  attr_accessor :total, :discount
  
  @@items = []
  
  def initialize(discount = 0)
   self.total = 0
   self.discount = discount
  end
    
  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    self.items << self
  end
  
  def apply_discount
    self.total *= (1 - (self.discount/100.0)) 
    if self.discount == 0 
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{self.total.round}."
    end
  end
  
  def items
    @@items
  end
end
