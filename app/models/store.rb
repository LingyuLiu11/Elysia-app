class Store < ApplicationRecord
  mount_uploader :avatar, PictureUploader

  validates :name, :address, :city, :state, :postal_code, :longitude, :latitude, presence: true
  has_many :products
  belongs_to :state
end
