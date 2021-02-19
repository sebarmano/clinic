class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :brand
      t.string :model
      t.string :year
      t.string :plate

      t.timestamps
    end
  end
end
