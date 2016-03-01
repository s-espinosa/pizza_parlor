require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/toppings_menu.rb'

class ToppingsMenuTest < Minitest::Test
  def setup
    @toppings_menu = ToppingsMenu.load_menu('data/toppings.csv')
  end

  def test_it_can_be_created
    assert_kind_of ToppingsMenu, @toppings_menu
  end

  def test_it_holds_a_collection_of_toppings
    assert @toppings_menu.toppings
    refute @toppings_menu.toppings == []
  end

  def test_it_finds_a_topping_object_by_name
    actual = @toppings_menu.find_by_name("Artichoke hearts")

    assert_equal "Artichoke hearts", actual.name
    assert_equal "2", actual.price
    assert_equal true, actual.is_vegetarian?
  end
end
