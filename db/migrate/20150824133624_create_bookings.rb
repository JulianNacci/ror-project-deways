class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :cars, index: true, foreign_key: true
      t.references :users, index: true, foreign_key: true
      t.string :checkin_date
      t.string :checkout_date
      t.string :booking_status

      t.timestamps null: false
    end
  end
end
