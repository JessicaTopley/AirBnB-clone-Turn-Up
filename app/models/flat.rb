class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :occupancy, presence: true

  has_many :bookings
  belongs_to :user

  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
