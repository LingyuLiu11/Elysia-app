class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 10, scale: 2
      t.string :introduce
      t.string :cover
      t.references :store
      t.timestamps
    end
  end
end
