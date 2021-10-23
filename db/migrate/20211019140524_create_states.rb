class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :abbreviation, comments: 'abbreviation of state'
      t.string :name, comments: 'name of state'
      t.timestamps
    end
  end
end
