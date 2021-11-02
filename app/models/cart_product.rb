class CartProduct < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  after_commit :update_cart_total_price

  def total_price
    number * product.price
  end

  def update_cart_total_price
    self.cart.update_total_price
  end
end
