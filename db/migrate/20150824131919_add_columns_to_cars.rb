class AddColumnsToCars < ActiveRecord::Migration
  def change
    add_column :cars, :year, :string
    add_column :cars, :gear_box, :string
    add_column :cars, :doors, :string
    add_column :cars, :gaz_consumption, :string
  end
end
