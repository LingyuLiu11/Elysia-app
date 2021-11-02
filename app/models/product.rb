class Product < ApplicationRecord
  mount_uploader :cover, PictureUploader

  belongs_to :store
  has_many :order_products
end
