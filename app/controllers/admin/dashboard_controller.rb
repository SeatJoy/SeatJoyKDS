class Admin::DashboardController < Admin::BaseController

  def login
  end

  private

  def set_nav_bar_klass
    @dashboard_klass = "active"
  end
end
