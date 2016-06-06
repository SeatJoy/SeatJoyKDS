class HomeController < ApplicationController

  before_action :set_counters

  helper_method :orders

  def index
  end

  def index2
    render layout: "admin"
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
