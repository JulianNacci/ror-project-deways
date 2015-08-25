class AddAvailableToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :available, :boolean
  end
end
