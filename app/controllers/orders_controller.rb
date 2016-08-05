require 'HTTParty'
require 'json'

class OrdersController < ApplicationController

  before_action :find_order

  helper_method :collection
  helper_method :done
  helper_method :pending

  def mark_as_done
    @order.done!
    @result = HTTParty.post('https://3abec280.ngrok.io/facebook/receive', 
    :body => { :subject => 'This is the screen name', 
               :issue_type => 'Application Problem', 
               :status => 'Open', 
               :priority => 'Normal', 
               :description => 'This is the description for the problem'
             }.to_json,
    :headers => { 'Content-Type' => 'application/json' } )
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
