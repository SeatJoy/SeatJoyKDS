class InventoryOrderItem < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true

  scope :by_title, -> { order(:title) }

end
