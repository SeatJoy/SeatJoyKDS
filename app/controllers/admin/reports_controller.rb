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

  def pdf
    html = render_to_string(
      action:       :report_in_pdf,
      layout:       "pdf.html.erb"
    )

    pdf = WickedPdf.new.pdf_from_string(html)

    send_data(pdf,
      :filename    => "my_pdf_name.pdf",
      :disposition => "attachment")
  end

  def pdf2
    render :report_in_pdf, layout: "pdf.html.erb"
    # pdf = render_to_string pdf:      "pdf",
    #                        template: "admin/reports/report_in_pdf.html.erb",
    #                        layout:   "pdf",
    #                        encoding: "UTF-8"

    # # then save to a file
    # save_path = Rails.root.join('pdfs','filename.pdf')

    # File.open(save_path, 'wb') do |file|
    #   file << pdf
    # end
  end

  private

  def set_nav_bar_klass
    @reports_klass = "active"
  end
end
