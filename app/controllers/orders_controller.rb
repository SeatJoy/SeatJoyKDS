class OrdersController < ApplicationController

  before_action :find_order

  helper_method :collection
  helper_method :done
  helper_method :pending

  def mark_as_done
    @order.done!
  end

  private

  def collection
    @collection ||= Order.by_date.pending
  end

  def done
    Order.by_status("done").count
  end

  def find_order
    @order = Order.find params[:id]
  end

  def pending
    collection.count
  end
end
