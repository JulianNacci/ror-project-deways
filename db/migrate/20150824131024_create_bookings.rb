class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :car, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :checkin_date
      t.string :checkout_date
      t.string :booking_status

      t.timestamps null: false
    end
  end
end
