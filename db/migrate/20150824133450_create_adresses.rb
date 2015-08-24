class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.string :adress
      t.references :car, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
