class ParkingSpace < ApplicationRecord
  before_validation -> { self.uuid = SecureRandom.uuid }, on: :create
  validates :uuid, presence: true

  scope :available, -> { where available: true }

  def take!
    update available: false
  end

  def self.clear_all!
    update_all available: true
  end
end
