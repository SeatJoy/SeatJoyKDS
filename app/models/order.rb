class Order < ActiveRecord::Base

  scope :by_date,   ->          { order("created_at ASC") }
  scope :by_status, -> (status) { where(status: status) }
  scope :pending,   ->          { where.not(status: "done") }

  def done!
    self.status = "done"

    save
  end
end
