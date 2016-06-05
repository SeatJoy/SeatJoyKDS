class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :qty
      t.string  :title
      t.decimal :amount

      t.timestamps null: false
    end

    add_index :order_items, :order_id
    add_index :order_items, :qty
    add_index :order_items, :title
  end
end
