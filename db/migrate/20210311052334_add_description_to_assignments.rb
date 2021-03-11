class AddDescriptionToAssignments < ActiveRecord::Migration[6.1]
  def change
    add_column :assignments, :description, :string, null: false
  end
end
