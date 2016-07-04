class Admin::InventoryOrderItemsController < Admin::BaseController

  def create
    @inventory_order_item = InventoryOrderItem.create(resource_params)

    flash[:errors] = @inventory_order_item.errors.full_messages

    redirect_to admin_inventory_url
  end

  def update
    @item = InventoryOrderItem.find params[:id]

    @item.update(resource_params)

    render nothing: true, status: :ok
  end

  private

  def resource_params
    params.require(:inventory_order_item).permit(:title, :price, :quantity)
  end
end
