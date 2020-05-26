require '../lib/item'

ItemCollection = Struct.new :items_path

class ItemCollection

  def item_collection
    items_data.map {|item| Item.new(item)}
  end

  private

  def items_data
    data = []
    CSV.foreach(items_path, headers: true, header_converters: :symbol) do |row|
      data << Hash[row]
    end
    data
  end
end
