class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string  :game
      t.string  :phone
      t.string  :seat_address
      t.string  :status
      t.string  :stadium
      t.decimal :total

      t.timestamps null: false
    end

    add_index :orders, :game
    add_index :orders, :seat_address
    add_index :orders, :status
    add_index :orders, :stadium
  end
end
