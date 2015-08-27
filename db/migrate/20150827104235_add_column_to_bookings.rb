class AddColumnToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :checkin_date, :datetime
    add_column :bookings, :checkout_date, :datetime
  end
end
