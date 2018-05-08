class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  @@items = []
  
  def initialize(discount = 0)
   self.total = 0
   self.discount = discount
  end
    
  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    self.last_transaction = price*quantity
    
    self.items << title
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
  
  def void_last_transaction
    self.total -= self.last_transaction
  end
end
