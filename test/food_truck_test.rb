require "./lib/food_truck"
require "minitest/autorun"
require "minitest/pride"
require "pry"

class FoodTruckTest < Minitest::Test
  def test_it_is_a_food_truck
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    food_truck = FoodTruck.new("Rocky Mountain Pies")

    assert_instance_of FoodTruck, food_truck
  end

  def test_it_has_attributes
    food_truck = FoodTruck.new("Rocky Mountain Pies")

    assert_equal "Rocky Mountain Pies", food_truck.name
    assert_instance_of Hash, food_truck.inventory
  end

  def test_it_holds_items
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    food_truck = FoodTruck.new("Rocky Mountain Pies")

    assert_equal {}, food_truck.inventory
  end
end
