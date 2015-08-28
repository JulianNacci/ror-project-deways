class RemoveColumnToBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :checkin_date, :string
    remove_column :bookings, :checkout_date, :string
  end
end
