class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :seat_address
      t.string :stadium
      t.string :game

      t.timestamps null: false
    end

    add_index :users, :name
    add_index :users, :seat_address
    add_index :users, :stadium
    add_index :users, :game
  end
end
