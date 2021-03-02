class Auction
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def unpopular_items
    unpopular_items = []
    @items.each do |item|
      unpopular_items << item if item.bids == {}
    end
    unpopular_items
  end

  def potential_revenue
    potential_revenue = 0
    @items.each do |item|
      potential_revenue += item.current_high_bid if item.bids != {}
    end
    potential_revenue
  end

  def bidders
    bidders = []
    @items.each do |item|
      item.bids.each do |bid|
          bidders << bid[0].name
      end
    end
    bidders.uniq
  end

  def bidder_info
    bidder_info = {}
    bidders.each do |bidder|
      item_hash = []
      item_hash << 
      @items[0].bids.each do |bid|
        bidder_info[bidder] = {:budget => bid[0].budget, :items => item_hash}
      end
    end
  end
end
