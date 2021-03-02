require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/auction'
require './lib/attendee'

class ItemTest < Minitest::Test
  def test_it_exists
    item1 = Item.new('Chalkware Piggy Bank')
    assert_instance_of Item, item1
  end

  def test_it_has_attributes
    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new('Bamboo Picture Frame')
    assert_equal "Chalkware Piggy Bank", item1.name
  end

  def test_add_bid
    item1 = Item.new('Chalkware Piggy Bank')
    attendee1 = Attendee.new(name: 'Megan', budget: '$50')
    attendee2 = Attendee.new(name: 'Bob', budget: '$75')
    expected = {}

    assert_equal expected, item1.bids

    item1.add_bid(attendee2, 20)
    item1.add_bid(attendee1, 22)
    expected = {attendee2 => 20, attendee1 => 22}

    assert_equal expected, item1.bids
  end
end
