class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_products
  attr_accessor :total_price


  def update_total_price
    self.total_price = slef.cart_products.map(&:total_price).sum
  end
end
