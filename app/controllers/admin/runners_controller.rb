class Admin::RunnersController < Admin::BaseController

  private

  def set_nav_bar_klass
    @runners_klass = "active"
  end
end
