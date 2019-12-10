class CashRegister
  attr_accessor :total, :employeeDiscount

  def initialize(employeeDiscount = 0)
    @total = 0
    @employeeDiscount = employeeDiscount
  end

end
