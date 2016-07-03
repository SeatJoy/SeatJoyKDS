class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :quantity,                        default: 0
      t.string  :title
      t.decimal :amount, precision: 10, scale: 2, default: 0.0

      t.timestamps null: false
    end

    add_index :order_items, :order_id
    add_index :order_items, :quantity
    add_index :order_items, :title
  end
end
