require "./lib/event"
require "minitest/autorun"
require "minitest/pride"

class EventTest
  def test_it_is_an_event
    event = Event.new("South Pearl Street Farmers Market")

    assert_instance_of Event, event
  end

  def test_it_has_attributes
    event = Event.new("South Pearl Street Farmers Market")

    assert_equal "South pearl Street Farmers Market", event.name
    assert_equal [], event.food_trucks
  end 
end
