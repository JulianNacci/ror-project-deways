class AddDistanceToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :distance, :string
  end
end
