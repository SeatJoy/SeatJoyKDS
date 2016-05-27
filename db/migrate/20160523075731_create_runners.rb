class CreateRunners < ActiveRecord::Migration
  def change
    create_table :runners do |t|
      t.string   :name
      t.string   :address
      t.string   :status
      t.date     :birth_date
      t.integer  :deliveries_completed
      t.integer  :delivery_area
      t.integer  :delivery_address
      t.integer  :rating
      t.string   :picture_file_name
      t.string   :picture_content_type
      t.integer  :picture_file_size
      t.datetime :picture_updated_at

      t.timestamps null: false
    end

    add_index :runners, :name
    add_index :runners, :address
    add_index :runners, :status
    add_index :runners, :deliveries_completed
    add_index :runners, :delivery_area
    add_index :runners, :delivery_address
    add_index :runners, :rating
  end
end
