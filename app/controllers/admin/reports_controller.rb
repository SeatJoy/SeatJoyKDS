class Admin::ReportsController < Admin::BaseController

  def orders_graph
    render json: [{
      "label": "Menues",
      "color": "#007800",
      "data": [
        ["S Fries",     25],
        ["L Fries",     12],
        ["L Coke",      45],
        ["S Coke",      39],
        ["S Hamburger", 85],
        ["M Hamburger", 65],
        ["L Hamburger", 44]
      ]
    }]
  end

  private

  def set_nav_bar_klass
    @reports_klass = "active"
  end
end
