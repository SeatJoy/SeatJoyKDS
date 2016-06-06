class Admin::BaseController < ApplicationController

  layout "admin"

  before_action :set_nav_bar_klass

  def index
  end

  private

  def set_nav_bar_klass
    @admin_klass = ""
  end
end
