class ChangeDataTypeForCheckOutDate < ActiveRecord::Migration
  def up
    change_table :bookings do |t|
      t.change :checkout_date, :string
    end
  end

  def down
    change_table :bookings do |t|
      t.change :checkout_date, :datetime
    end
  end
end
