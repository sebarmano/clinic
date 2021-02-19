class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :assignment, null: false, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
