class Admin::UpsellController < Admin::BaseController

  private

  def set_nav_bar_klass
    @upsell_klass = "active"
  end
end
