require '/Users/litowhite/turing/mod1/projects/black_thursday_lite/lib/item.rb'
require 'pry'

class ItemCollection
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def all
    items.map do |item|
      Item.new(item)
    end
  end

  def where(data)

    #all.select {|item| item.id == data.keys.first.to_s}
    all.select do |item|
      binding.pry
      item.send(data.keys.first) == data.values.first.to_s
      "2" == "1"
    end
  end


end
