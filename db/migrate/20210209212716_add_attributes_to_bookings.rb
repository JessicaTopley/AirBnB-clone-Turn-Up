class AddAttributesToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :date_from, :date
    add_column :bookings, :date_to, :date
    add_column :bookings, :guests, :integer
  end
end
