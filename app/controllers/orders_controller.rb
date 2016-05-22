class OrdersController < ApplicationController

  before_action :find_order

  helper_method :collection

  def mark_as_done
    @order.done!

    render nothing: :true, status: :ok
  end

  private

  def collection
    @collection ||= Order.by_date.pending
  end

  def find_order
    @order = Order.find params[:id]
  end
end
