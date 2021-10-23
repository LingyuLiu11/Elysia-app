class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name, comments: 'name of store'
      t.string :avatar, comments: 'avatar of store'
      t.string :address, comments: 'address of store'
      t.string :address_supplement, comments: 'address supplement of store'
      t.integer :city_id, index: true, comments: 'city of store'
      t.integer :state_id, index: true, comments: 'state of store'
      t.integer :postal_code, index: true, comments: 'postal code of store'
      t.float :longitude, comments: 'longitude of address'
      t.float :latitude, comments: 'latitude of address'
      t.timestamps
    end
  end
end
