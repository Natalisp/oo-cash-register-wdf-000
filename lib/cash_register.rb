
class CashRegister
 
 attr_accessor :total, :discount, :basket, :last_transaction

 def initialize(discount = 0)
    @total = 0
    @discount = discount
    @basket = []
 end

 def total
    @total
 end

 def add_item(item, price, quantity = 1)
    self.total += quantity * price
    quantity.times do
    @basket << item
    end
    self.last_transaction = quantity * price
 end

 def apply_discount
  if discount != 0
    self.total = total - ((total * discount)/100)
    "After the discount, the total comes to $#{self.total}."
  else
    "There is no discount to apply."
  end
 end

 def items
  @basket
end

 def void_last_transaction
   self.total  = self.total - self.last_transaction
 end

end
