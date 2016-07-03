class CreateInventoryOrderItems < ActiveRecord::Migration
  def change
    create_table :inventory_order_items do |t|
      t.string  :title
      t.decimal :price, precision: 10, scale: 2, default: 0.0
      t.integer :quantity,                       default: 0

      t.timestamps null: false
    end

    add_index :inventory_order_items, :title
    add_index :inventory_order_items, :price
    add_index :inventory_order_items, :quantity
  end
end
