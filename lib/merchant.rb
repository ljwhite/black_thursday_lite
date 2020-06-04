#Merchant = Struct.new :attrs

class Merchant
  attr_reader :id, :name, :created_at, :updated_at

  def initialize(attrs)
    @id = attrs.fetch(:id)
    @name = attrs.fetch(:name)
    @created_at = attrs.fetch(:created_at)
    @updated_at = attrs.fetch(:updated_at)
    # @description = attrs.fetch(:description)
    # @unit_price = attrs.fetch(:unit_price)
    # @merchant_id = attrs.fetch(:merchant_id)
  end
end
