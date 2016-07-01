class Admin::UpsellController < Admin::BaseController

  helper_method :order_items

  private

  def order_items
    @order_items ||= InventoryOrderItem.all
  end

  def set_nav_bar_klass
    @upsell_klass = "active"
  end
end
