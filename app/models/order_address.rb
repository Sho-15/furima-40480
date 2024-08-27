class OrderAddress
  include ActiveModel::Model
  attr_accessor :post_code, :ship_from_area_id, :city, :address, :building, :phone_number, :user_id, :item_id, :token

  with_options presence: true do
    validates :post_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Include hyphen(-)' }
    validates :ship_from_area_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :city, :address, :user_id, :item_id, :token
    validates :phone_number, format: { with: /\A\d{10,11}\z/, message: 'is invalid' }
  end

  def save
    order = Order.create(user_id:, item_id:)

    Address.create(post_code:, ship_from_area_id:, city:, address:, building:, phone_number:, order_id: order.id)
  end
end
