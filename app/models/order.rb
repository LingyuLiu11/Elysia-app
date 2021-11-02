class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products

  enum order_status: [:unpaid, :paid, :refund]
end
