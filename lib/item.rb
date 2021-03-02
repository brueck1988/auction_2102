class Item
  attr_reader :name,
              :bids

  def initialize(name)
    @name = name
    @bids = {}
  end

  def add_bid(attendee, bid)
    @bids[attendee] = bid
  end

  def current_high_bid
    @bids.max_by{|key, value| value}[1]
    # @bids.each do |bid|
    #   require "pry";binding.pry
    #   bid[1].max
    # end
  end
end
