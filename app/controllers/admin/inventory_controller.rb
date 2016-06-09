class Admin::InventoryController < Admin::BaseController

  private

  def set_nav_bar_klass
    @inventory_klass = "active"
  end
end
