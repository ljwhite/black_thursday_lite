require 'minitest/autorun'
require 'minitest/pride'
require '../lib/sales_engine'
require '../lib/item_collection'
require '../lib/item'
require '../lib/merchant_collection'
require '../lib/merchant'
require 'pry'


class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "/Users/litowhite/turing/mod1/projects/black_thursday_lite/test/fixtures/sample_item.csv",
      :merchants => "/Users/litowhite/turing/mod1/projects/black_thursday_lite/test/fixtures/sample_merchant.csv",
    })
    @item1 = Item.new({
      :id          => "1",
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => "1099",
      :merchant_id => "2",
      :created_at  => "2016-01-11 11:51:37 UTC",
      :updated_at  => "2008-04-02 13:48:57 UTC"
    })

    @merchant1 = Merchant.new({:id => 1, :name => "Turing School"})
  end

  def test_it_has_readable_attributes
    assert_equal @sales_engine.item_collection.first, @item1
    assert_equal @sales_engine.merchant_collection.first, @merchant1
  end
end
