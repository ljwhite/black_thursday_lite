require '/Users/litowhite/turing/mod1/projects/black_thursday_lite/lib/merchant.rb'

class MerchantCollection
  attr_reader :merchants

  def initialize(merchants)
    @merchants = merchants
  end

  def all
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def find(id)
    result = all.select {|merchant| merchant.id == id.to_s}
    if result
      result.first
    else
      nil
    end
  end

end

# TODO:
#1. Figure out a more ruby way of searching in ruby hash
#2. Try to implement all method for item collection
