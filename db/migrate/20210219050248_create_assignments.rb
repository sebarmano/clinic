class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
