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

  def total_day
    render json: [{
      "label": "Total Payments",
      "color": "#00BCD4",
      "data": [
        ["10 AM", 50],
        ["11 AM", 93],
        ["12 PM", 120],
        ["1  PM", 140],
        ["2  PM", 130],
        ["3  PM", 180],
        ["4  PM", 80],
        ["5  PM", 70],
        ["6  PM", 95],
        ["7  PM", 44],
        ["8  PM", 32]
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
