class CreateOrderProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :order_products do |t|
      t.references :order
      t.references :product
      t.decimal :price, precision: 10, scale: 2
      t.timestamps
    end
  end
end
