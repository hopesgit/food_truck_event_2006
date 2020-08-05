require "./lib/item"
require "./lib/food_truck"

class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name        = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |truck|
      truck.check_stock(item) > 0
    end
  end

  def item_list
    @food_trucks.flat_map do |truck|
      truck.inventory.keys
    end.uniq
  end

  def sorted_item_list
  end

  def total_inventory
    item_list.reduce({}) do |result, item|
      stock = @food_trucks.each do { |truck| truck.check_stock(item)} 
      result[item] = {quantity: stock, food_trucks: food_trucks_that_sell(item)}
    end
  end

  def overstocked_items
  end
end
