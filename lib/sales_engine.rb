require 'csv'
require '../lib/item_collection'
require 'pry'

class SalesEngine
  attr_reader :items, :merchants

  def initialize(data_files)
    @items = read_csv(data_files[:items])
    @merchants = read_csv(data_files[:merchants])
  end

  def SalesEngine.from_csv(data_files)
    new(data_files)
  end

  def item_collection
    ItemCollection.new(items).call
  end

  def merchant_collection
    MerchantCollection.new(merchants).call
  end

  private
  def read_csv(file_path)
    data = []
    CSV.foreach(file_path, headers: true, header_converters: :symbol) do |row|
      data << Hash[row]
    end
    data
  end
  # attr_reader :items, :merchants
  # #class << self
  #
  #   def from_csv(data_files)
  #     @items = read_csv(data_files[:items])
  #     @merchants = read_csv(data_files[:merchants])
  #   end
  #
  #   def item_collection
  #     ItemCollection.new(items)
  #   end
  #
  #
  #   def merchant_collection
  #     MerchantCollection.new(merchants)
  #   end
  #
  #   private
  #
  #   def read_csv(file_path)
  #     data = []
  #     CSV.foreach(file_path, headers: true, header_converters: :symbol) do |row|
  #       data << Hash[row]
  #     end
  #     data
  #   end

end
