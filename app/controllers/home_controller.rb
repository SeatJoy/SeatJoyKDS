class HomeController < ApplicationController

  layout "admin"

  before_action :set_counters

  helper_method :orders

  def index
  end

  private

  def orders
    @orders ||= Order.by_date.pending
  end

  def set_counters
    @done    ||= Order.by_date.by_status("done").count
    @pending ||= Order.by_date.pending.count
  end
end
