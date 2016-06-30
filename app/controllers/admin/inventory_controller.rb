class Admin::InventoryController < Admin::BaseController

  helper_method :collection

  def upload_csv
    result = upload_csv_service.call

    redirect_to admin_inventory_url, notice: result[:message]
  end

  private

  def collection
    @collection ||= InventoryOrderItem.all
  end

  def set_nav_bar_klass
    @inventory_klass = "active"
  end

  def upload_csv_service
    Admin::UploadCSV.new(upload_params[:file])
  end

  def upload_params
    params.permit(:file)
  end
end
