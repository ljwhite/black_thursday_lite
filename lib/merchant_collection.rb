require '../lib/merchant'

MerchantCollection = Struct.new :merchants_path

class MerchantCollection
  def merchant_collection
    merchants_data.map {|item| Merchant.new(item)}
  end

  private

  def merchants_data
    data = []
    CSV.foreach(merchants_path, headers: true, header_converters: :symbol) do |row|
      data << Hash[row]
    end
    data
  end
end
