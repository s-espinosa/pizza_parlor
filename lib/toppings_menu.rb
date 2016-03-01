require          'csv'
require          'pry'
require_relative 'topping'

class ToppingsMenu
  attr_reader :toppings

  def initialize
    @toppings = []
  end

  def self.load_menu(csv_location)
    toppings_menu = ToppingsMenu.new
    toppings_csv = import_csv(csv_location)
    push_toppings_to_toppings(toppings_menu, toppings_csv)
    toppings_menu
  end

  def self.import_csv(csv_location)
    CSV.open(csv_location, headers: true, header_converters: :symbol)
  end

  def self.push_toppings_to_toppings(toppings_menu_object, toppings_csv)
    toppings_csv.each do |topping|
      toppings_menu_object.toppings << Topping.new(topping[:name], topping[:price], topping[:is_vegetarian])
    end
  end

  def find_by_name(topping)
    @toppings.detect do |topping_object|
      topping_object.name == topping
    end
  end

end
