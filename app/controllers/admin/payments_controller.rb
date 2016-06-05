class Admin::PaymentsController < ApplicationController

  layout "admin"

  def total
    render json: [{
      "label": "Total Payments",
      "color": "#009688",
      "data": [
        ["New",       1116.25],
        ["Repeating", 528.10]
      ]
    }]
  end

  def average
    render json: [{
      "label": "Average Payments",
      "color": "#007800",
      "data": [
        ["New",       8.39],
        ["Repeating", 7.89],
      ]
    }]
  end
end
