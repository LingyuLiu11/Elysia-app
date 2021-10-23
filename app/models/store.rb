class Store < ApplicationRecord
  validates :name, :address, :city, :state, :postal_code, :longitude, :latitude, presence: true
end
