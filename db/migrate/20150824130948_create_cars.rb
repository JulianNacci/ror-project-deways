class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :motorisation
      t.string :category
      t.integer :seats
      t.references :user, index: true, foreign_key: true
      t.float :daily_rate
      t.text :description

      t.timestamps null: false
    end
  end
end
