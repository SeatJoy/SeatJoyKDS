class Order < ActiveRecord::Base

  scope :by_date,   ->          { order("created_at DESC") }
  scope :by_status, -> (status) { where(status: status) }
  scope :pending,   ->          { where.not(status: "done") }

end
