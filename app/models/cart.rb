class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_products
  # attr_accessor :total_price

  def total_price
    self.cart_products.map(&:total_price).sum
  end
end
