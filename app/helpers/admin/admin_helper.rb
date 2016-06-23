module Admin::AdminHelper

  def current_date
    Time.now.strftime("%dth %B %Y")
  end

end
