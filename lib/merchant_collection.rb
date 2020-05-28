require '../lib/merchant'

class MerchantCollection
  attr_reader :merchants

  def initialize(merchants)
    @merchants = merchants
  end

  def call
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end
end
