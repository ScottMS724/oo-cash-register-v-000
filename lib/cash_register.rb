class CashRegister
  attr_accessor :total, :discount, :price 
  @@items = []
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
  end 
  
  def add_item(title, price, amount_bought = 1)
    @price = price
    @total = @total + price * amount_bought
  end 
  
  def apply_discount 
    if @discount > 0 
      the_discount = (price * discount) / 100
      @total = @total - the_discount 
      return "After the discount, the total comes to $#{@total}."
    else 
      return "There is no discount to apply."
    end 
  end 
  
  def items 
    @@items
  end 
  
end 