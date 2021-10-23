# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.1]

  def up
    create_table :users do |t|
      t.string :first_name, comments: 'first name of user'
      t.string :middle_name, comments: 'middle name of user'
      t.string :last_name, comments: 'last name of user'
      t.string :phone_number, comments: 'phone_number of user'
      t.string :avatar, comments: 'avatar link of user'
      t.string :email, comments: 'email of user'
      t.boolean :confirmed, comments: 'Whether the user is confirmed'
      t.string :encrypted_password, comments: 'password of user'
      t.timestamps null: false
    end
    add_index :users, :email, unique: true
    add_index :users, :phone_number, unique: true
  end

  def down
    drop_table :table_name
  end
end
