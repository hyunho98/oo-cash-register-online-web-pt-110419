class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    times.quantity {
      @items << title
    }
    @total += price * quantity
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= @total * (@discount / 100.0)
      @total = @total.to_i
      return "After the discount, the total comes to $#{@total}."
    end
  end

end
