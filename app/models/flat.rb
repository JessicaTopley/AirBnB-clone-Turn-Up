class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :occupancy, presence: true

  has_many :bookings
  belongs_to :user
end
