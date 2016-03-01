class Topping
  attr_reader :name, :price

  def initialize(name, price, is_vegetarian)
    @name          = name
    @price         = price
    @is_vegetarian = is_vegetarian
  end

  def is_vegetarian?
    @is_vegetarian == "yes"
  end

end
