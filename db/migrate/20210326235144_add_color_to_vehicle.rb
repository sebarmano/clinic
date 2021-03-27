class AddColorToVehicle < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :color, :string
  end
end
