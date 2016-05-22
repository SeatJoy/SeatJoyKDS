class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :phone
      t.string :section
      t.string :row
      t.string :seat
      t.string :status

      t.timestamps null: false
    end

    add_index :orders, :section
    add_index :orders, :row
    add_index :orders, :seat
    add_index :orders, :status
  end
end
