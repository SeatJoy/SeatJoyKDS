module Admin::AdminHelper

  def current_date
    Time.now.strftime("%dth %B %Y")
  end

  def fifteen_minutes_periods
    @fifteen_minutes_periods ||=
      (Time.parse("10:00 AM").to_i..Time.parse("09:00 PM").to_i)
      .to_a.in_groups_of(15.minutes)
      .collect(&:first)
      .collect { |t| Time.at(t).strftime("%H:%M %p") }
  end
end
