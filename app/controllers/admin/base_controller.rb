class Admin::BaseController < ApplicationController

  layout :set_layout

  before_action :authenticate_admin!
  before_action :set_nav_bar_klass

  def index
  end

  private

  def set_layout
    params[:small].present? ? "admin_smaller" : "admin"
  end

  def set_nav_bar_klass
    @admin_klass = ""
  end
end
