require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/topping.rb'

class ToppingTest < Minitest::Test
  def setup
    @topping = Topping.new("Artichoke hearts",2,"yes")
    @meat_topping = Topping.new("Anchovies",2,"no")
  end

  def test_it_can_be_created
    assert_kind_of Topping, @topping
  end

  def test_it_has_a_name
    assert_equal "Artichoke hearts", @topping.name
  end

  def test_it_has_a_price
    assert_equal 2, @topping.price
  end

  def test_it_can_be_vegetarian
    assert_equal true, @topping.is_vegetarian?
  end

  def test_it_can_be_non_vegetarian
    assert_equal false, @meat_topping.is_vegetarian?
  end

end
