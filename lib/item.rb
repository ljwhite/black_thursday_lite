class Item

  attr_reader :id, :name, :description, :merchant_id, :unit_price
  
  def initialize(attrs)
    @id = attrs[:id]
    @name = attrs.fetch(:name)
    @created_at = attrs.fetch(:created_at)
    @updated_at = attrs.fetch(:updated_at)
    @description = attrs.fetch(:description)
    @unit_price = attrs.fetch(:unit_price)
    @merchant_id = attrs.fetch(:merchant_id)
  end
end
