
# require 'pry'
class CashRegister


attr_accessor :total, :discount, :item_array, :last_transactions

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_array = []
  end

  def add_item(item, price, quantity = 1)
    self.total += (price * quantity)
    ([item] * quantity).each {|i| @item_array << i}
    self.last_transaction = price * quantity
    end

  def apply_discount
      if discount != 0
        self.total -= discount.to_f / 100.0 * @total.to_f
        return "After the discount, the total comes to $#{@total.to_i}."
      else
        return "There is no discount to apply."
      end
  end

  def items
    self.item_array
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
