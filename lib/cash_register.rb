class CashRegister
  attr_accessor :total
  
  def initialize(total = 0, discount)
    @total = total
    @discount = discount
  end
end
