require 'minitest/autorun'
require 'minitest/pride'
require '/Users/litowhite/turing/mod1/projects/black_thursday_lite/lib/merchant_collection.rb'
require '/Users/litowhite/turing/mod1/projects/black_thursday_lite/lib/merchant.rb'
require 'pry'
require 'csv'


class MerchantCollectionTest < Minitest::Test

  def setup
    @merchants_sample = read_csv("/Users/litowhite/turing/mod1/projects/black_thursday_lite/test/fixtures/sample_merchant.csv")
    @merchant_collection = MerchantCollection.new(@merchants_sample)
  end

  def test_it_can_list_all_merchants
    assert_equal @merchant_collection.all.count, @merchants_sample.length
  end

  def test_it_can_find_merchant
    assert_equal @merchant_collection.find(1).id, @merchant_collection.all.first.id
  end

  def test_it_returns_nil_if_no_merchant
    assert_nil @merchant_collection.find(100), nil
  end

  private

  def read_csv(file_path)
    data = []
    CSV.foreach(file_path, headers: true, header_converters: :symbol) do |row|
      data << Hash[row]
    end
    data
  end

  



end
