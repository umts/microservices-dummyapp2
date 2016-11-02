class ParkingSpace < ApplicationRecord
  scope :available, -> { where available: true }

  def take!
    update available: false
  end

  def self.clear_all!
    update_all available: true
  end
end
