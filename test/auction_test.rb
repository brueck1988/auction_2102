require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/auction'
require './lib/attendee'

class AuctionTest < Minitest::Test
  def test_it_exists
    auction = Auction.new
    assert_instance_of Auction, auction
  end

  def test_it_has_attributes
    auction = Auction.new
    assert_equal [], auction.items
  end
end
