require "csv"

class Admin::UploadCSV

  attr_reader :file

  def initialize(file)
    @file = file
  end

  def call
    begin
      CSV.foreach(file.path, headers: true) do |row|
        order_item_params = row.to_hash
        InventoryOrderItem.create(order_item_params)
      end
      message = "Items uploaded successfully!"
    rescue => e
      message = "Invalid CSV file format"
    end

    { message: message }
  end

end
