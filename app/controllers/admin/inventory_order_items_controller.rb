class Admin::InventoryOrderItemsController < Admin::BaseController

  def update
    @item = InventoryOrderItem.find params[:id]

    @item.update(price: update_params[:price])

    render nothing: true, status: :ok
  end

  private

  def update_params
    params.require(:inventory_order_item).permit(:price)
  end
end
