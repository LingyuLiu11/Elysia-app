class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user
      t.decimal :total_price, precision: 10, scale: 2
      t.integer :order_status, default: 0
      t.timestamps
    end
  end
end
