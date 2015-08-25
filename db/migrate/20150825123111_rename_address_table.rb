class RenameAddressTable < ActiveRecord::Migration
  def change
    rename_table :address, :addresses
  end
end
