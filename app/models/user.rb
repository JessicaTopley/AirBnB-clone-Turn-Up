class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :booked_flats, through: :bookings, source: :flats
  has_many :flats, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
