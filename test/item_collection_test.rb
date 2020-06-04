require 'minitest/autorun'
require 'minitest/pride'
require '/Users/litowhite/turing/mod1/projects/black_thursday_lite/lib/item_collection.rb'
require '/Users/litowhite/turing/mod1/projects/black_thursday_lite/lib/item.rb'
require 'pry'
require 'csv'


class ItemCollectionTest < Minitest::Test

  def setup
    @item_sample = read_csv("/Users/litowhite/turing/mod1/projects/black_thursday_lite/test/fixtures/sample_item.csv")
    @item_collection = ItemCollection.new(@item_sample)
  end

  def test_it_can_list_all_items
    assert_equal @item_collection.all.count, @item_sample.length
  end

  def test_it_can_use_where_to_find_items
    expected_item = @item_collection.all.first.id
    assert_equal @item_collection.where({merchant_id: 1}).first.id, expected_item
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
