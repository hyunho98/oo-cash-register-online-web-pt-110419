class CashRegister
  attr_accessor :total, :discount, :items
  @itemHolder = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @itemHolder << price
    @itemHolder << quantity
    quantity.times {
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
