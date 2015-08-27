class ChangeSeatsType < ActiveRecord::Migration
  def change
    change_column :cars, :seats, :string
  end
end
