class ChangeDataTypeForCheckInDate < ActiveRecord::Migration
  def up
    change_table :bookings do |t|
      t.change :checkin_date, :string
    end
  end

  def down
    change_table :bookings do |t|
      t.change :checkin_date, :datetime
    end
  end
end
