require 'csv'
require '../lib/item_collection'
require 'pry'

class SalesEngine

  class << self
    def from_csv(data_files)
      items(data_files[:items])
      merchants(data_files[:merchants])
    end

    def items(items_path)
      ItemCollection.new(items_path)
    end

    def merchants(merchants_path)
      MerchantCollection.new(merchants_path)
    end
  end
end
