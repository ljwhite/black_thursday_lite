require '../lib/item'

class ItemCollection
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def call
    items.map do |item|
      Item.new(item)
    end
  end
end
