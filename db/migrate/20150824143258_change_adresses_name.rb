class ChangeAdressesName < ActiveRecord::Migration
  def change
    rename_table :addresses, :address
  end
end
