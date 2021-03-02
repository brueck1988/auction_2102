require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/auction'
require './lib/attendee'

class AttendeeTest < Minitest::Test
  def test_it_exists
    attendee = Attendee.new(name: 'Megan', budget: '$50')
    assert_instance_of Attendee, attendee
  end

  def test_it_has_attributes
    attendee = Attendee.new(name: 'Megan', budget: '$50')
    assert_equal "Megan", attendee.name
    assert_equal 50, attendee.budget
  end

  # def test_it_has_attributes
  #   item1 = Item.new('Chalkware Piggy Bank')
  #   item2 = Item.new('Bamboo Picture Frame')
  #   assert_equal
  # end
end
